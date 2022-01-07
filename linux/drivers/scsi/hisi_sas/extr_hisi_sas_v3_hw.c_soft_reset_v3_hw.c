
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int disable_host_v3_hw (struct hisi_hba*) ;
 int hisi_sas_init_mem (struct hisi_hba*) ;
 int hw_init_v3_hw (struct hisi_hba*) ;

__attribute__((used)) static int soft_reset_v3_hw(struct hisi_hba *hisi_hba)
{
 struct device *dev = hisi_hba->dev;
 int rc;

 rc = disable_host_v3_hw(hisi_hba);
 if (rc) {
  dev_err(dev, "soft reset: disable host failed rc=%d\n", rc);
  return rc;
 }

 hisi_sas_init_mem(hisi_hba);

 return hw_init_v3_hw(hisi_hba);
}
