
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int dummy; } ;


 int aac_free_safw_all_identify_resp (struct aac_dev*,int) ;
 int aac_free_safw_ciss_luns (struct aac_dev*) ;
 int aac_get_containers (struct aac_dev*) ;
 int aac_get_safw_attr_all_targets (struct aac_dev*) ;
 int aac_get_safw_ciss_luns (struct aac_dev*) ;
 int aac_set_safw_attr_all_targets (struct aac_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aac_setup_safw_targets(struct aac_dev *dev)
{
 int rcode = 0;

 rcode = aac_get_containers(dev);
 if (unlikely(rcode < 0))
  goto out;

 rcode = aac_get_safw_ciss_luns(dev);
 if (unlikely(rcode < 0))
  goto out;

 rcode = aac_get_safw_attr_all_targets(dev);
 if (unlikely(rcode < 0))
  goto free_ciss_luns;

 aac_set_safw_attr_all_targets(dev);

 aac_free_safw_all_identify_resp(dev, -1);
free_ciss_luns:
 aac_free_safw_ciss_luns(dev);
out:
 return rcode;
}
