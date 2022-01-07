
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int init_reg_v1_hw (struct hisi_hba*) ;
 int msleep (int) ;
 int reset_hw_v1_hw (struct hisi_hba*) ;

__attribute__((used)) static int hw_init_v1_hw(struct hisi_hba *hisi_hba)
{
 struct device *dev = hisi_hba->dev;
 int rc;

 rc = reset_hw_v1_hw(hisi_hba);
 if (rc) {
  dev_err(dev, "hisi_sas_reset_hw failed, rc=%d", rc);
  return rc;
 }

 msleep(100);
 init_reg_v1_hw(hisi_hba);

 return 0;
}
