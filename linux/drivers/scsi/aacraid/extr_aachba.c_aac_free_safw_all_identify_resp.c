
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aac_dev {int dummy; } ;


 int aac_free_safw_identify_resp (struct aac_dev*,int ,int ) ;
 int aac_get_safw_phys_bus (struct aac_dev*,int) ;
 int aac_get_safw_phys_lun_count (struct aac_dev*) ;
 int aac_get_safw_phys_target (struct aac_dev*,int) ;

__attribute__((used)) static inline void aac_free_safw_all_identify_resp(struct aac_dev *dev,
 int lun_count)
{
 int luns;
 int i;
 u32 bus;
 u32 target;

 luns = aac_get_safw_phys_lun_count(dev);

 if (luns < lun_count)
  lun_count = luns;
 else if (lun_count < 0)
  lun_count = luns;

 for (i = 0; i < lun_count; i++) {
  bus = aac_get_safw_phys_bus(dev, i);
  target = aac_get_safw_phys_target(dev, i);

  aac_free_safw_identify_resp(dev, bus, target);
 }
}
