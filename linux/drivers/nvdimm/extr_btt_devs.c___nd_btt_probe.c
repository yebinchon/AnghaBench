
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {int dummy; } ;
struct nd_btt {int dev; int uuid; int lbasize; } ;
struct btt_sb {int uuid; int external_lbasize; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ SZ_16M ;
 int __nd_device_register (int *) ;
 int kmemdup (int ,int,int ) ;
 int le32_to_cpu (int ) ;
 int nd_btt_version (struct nd_btt*,struct nd_namespace_common*,struct btt_sb*) ;
 scalar_t__ nvdimm_namespace_capacity (struct nd_namespace_common*) ;

__attribute__((used)) static int __nd_btt_probe(struct nd_btt *nd_btt,
  struct nd_namespace_common *ndns, struct btt_sb *btt_sb)
{
 int rc;

 if (!btt_sb || !ndns || !nd_btt)
  return -ENODEV;

 if (nvdimm_namespace_capacity(ndns) < SZ_16M)
  return -ENXIO;

 rc = nd_btt_version(nd_btt, ndns, btt_sb);
 if (rc < 0)
  return rc;

 nd_btt->lbasize = le32_to_cpu(btt_sb->external_lbasize);
 nd_btt->uuid = kmemdup(btt_sb->uuid, 16, GFP_KERNEL);
 if (!nd_btt->uuid)
  return -ENOMEM;

 __nd_device_register(&nd_btt->dev);

 return 0;
}
