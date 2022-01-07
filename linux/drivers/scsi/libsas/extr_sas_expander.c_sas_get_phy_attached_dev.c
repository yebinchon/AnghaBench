
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct discover_resp {int attached_sas_addr; } ;
struct smp_resp {struct discover_resp disc; } ;
struct domain_device {int dummy; } ;
typedef enum sas_device_type { ____Placeholder_sas_device_type } sas_device_type ;


 int DISCOVER_RESP_SIZE ;
 int ENOMEM ;
 int SAS_ADDR_SIZE ;
 struct smp_resp* alloc_smp_resp (int ) ;
 int kfree (struct smp_resp*) ;
 int memcpy (int *,int ,int ) ;
 int memset (int *,int ,int ) ;
 int sas_get_phy_discover (struct domain_device*,int,struct smp_resp*) ;
 int to_dev_type (struct discover_resp*) ;

__attribute__((used)) static int sas_get_phy_attached_dev(struct domain_device *dev, int phy_id,
        u8 *sas_addr, enum sas_device_type *type)
{
 int res;
 struct smp_resp *disc_resp;
 struct discover_resp *dr;

 disc_resp = alloc_smp_resp(DISCOVER_RESP_SIZE);
 if (!disc_resp)
  return -ENOMEM;
 dr = &disc_resp->disc;

 res = sas_get_phy_discover(dev, phy_id, disc_resp);
 if (res == 0) {
  memcpy(sas_addr, disc_resp->disc.attached_sas_addr,
         SAS_ADDR_SIZE);
  *type = to_dev_type(dr);
  if (*type == 0)
   memset(sas_addr, 0, SAS_ADDR_SIZE);
 }
 kfree(disc_resp);
 return res;
}
