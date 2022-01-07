
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trf7970a {int is_initiator; scalar_t__ state; int lock; int dev; } ;
struct nfc_digital_dev {int dummy; } ;


 int EINVAL ;


 scalar_t__ TRF7970A_ST_PWR_OFF ;
 scalar_t__ TRF7970A_ST_RF_OFF ;
 int dev_dbg (int ,char*,int,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct trf7970a* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int trf7970a_switch_rf_on (struct trf7970a*) ;
 int trf7970a_tg_config_framing (struct trf7970a*,int) ;
 int trf7970a_tg_config_rf_tech (struct trf7970a*,int) ;

__attribute__((used)) static int trf7970a_tg_configure_hw(struct nfc_digital_dev *ddev, int type,
        int param)
{
 struct trf7970a *trf = nfc_digital_get_drvdata(ddev);
 int ret;

 dev_dbg(trf->dev, "Configure hw - type: %d, param: %d\n", type, param);

 mutex_lock(&trf->lock);

 trf->is_initiator = 0;

 if ((trf->state == TRF7970A_ST_PWR_OFF) ||
     (trf->state == TRF7970A_ST_RF_OFF)) {
  ret = trf7970a_switch_rf_on(trf);
  if (ret)
   goto err_unlock;
 }

 switch (type) {
 case 128:
  ret = trf7970a_tg_config_rf_tech(trf, param);
  break;
 case 129:
  ret = trf7970a_tg_config_framing(trf, param);
  break;
 default:
  dev_dbg(trf->dev, "Unknown type: %d\n", type);
  ret = -EINVAL;
 }

err_unlock:
 mutex_unlock(&trf->lock);
 return ret;
}
