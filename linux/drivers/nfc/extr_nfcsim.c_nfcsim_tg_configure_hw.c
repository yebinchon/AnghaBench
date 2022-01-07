
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcsim {int up; int rf_tech; int mode; } ;
struct nfc_digital_dev {int dummy; } ;


 int EINVAL ;
 int NFCSIM_ERR (struct nfcsim*,char*,int) ;
 int NFCSIM_MODE_TARGET ;


 struct nfcsim* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;

__attribute__((used)) static int nfcsim_tg_configure_hw(struct nfc_digital_dev *ddev,
       int type, int param)
{
 struct nfcsim *dev = nfc_digital_get_drvdata(ddev);

 switch (type) {
 case 128:
  dev->up = 1;
  dev->mode = NFCSIM_MODE_TARGET;
  dev->rf_tech = param;
  break;

 case 129:
  break;

 default:
  NFCSIM_ERR(dev, "Invalid configuration type: %d\n", type);
  return -EINVAL;
 }

 return 0;
}
