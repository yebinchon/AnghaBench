
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {scalar_t__ claim_class; } ;
struct nd_btt {int version_major; int version_minor; scalar_t__ initial_offset; } ;
struct btt_sb {int version_minor; int version_major; } ;


 int ENODEV ;
 int ENXIO ;
 scalar_t__ NVDIMM_CCLASS_BTT2 ;
 scalar_t__ SZ_4K ;
 int le16_to_cpu (int ) ;
 int nd_btt_arena_is_valid (struct nd_btt*,struct btt_sb*) ;
 scalar_t__ nvdimm_read_bytes (struct nd_namespace_common*,scalar_t__,struct btt_sb*,int,int ) ;

int nd_btt_version(struct nd_btt *nd_btt, struct nd_namespace_common *ndns,
  struct btt_sb *btt_sb)
{
 if (ndns->claim_class == NVDIMM_CCLASS_BTT2) {

  nd_btt->initial_offset = 0;
  nd_btt->version_major = 2;
  nd_btt->version_minor = 0;
  if (nvdimm_read_bytes(ndns, 0, btt_sb, sizeof(*btt_sb), 0))
   return -ENXIO;
  if (!nd_btt_arena_is_valid(nd_btt, btt_sb))
   return -ENODEV;
  if ((le16_to_cpu(btt_sb->version_major) != 2) ||
    (le16_to_cpu(btt_sb->version_minor) != 0))
   return -ENODEV;
 } else {




  nd_btt->initial_offset = SZ_4K;
  nd_btt->version_major = 1;
  nd_btt->version_minor = 1;
  if (nvdimm_read_bytes(ndns, SZ_4K, btt_sb, sizeof(*btt_sb), 0))
   return -ENXIO;
  if (!nd_btt_arena_is_valid(nd_btt, btt_sb))
   return -ENODEV;
  if ((le16_to_cpu(btt_sb->version_major) != 1) ||
    (le16_to_cpu(btt_sb->version_minor) != 1))
   return -ENODEV;
 }
 return 0;
}
