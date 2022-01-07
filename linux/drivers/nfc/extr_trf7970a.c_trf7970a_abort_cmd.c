
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trf7970a {int state; int aborting; int ignore_timeout; int lock; int dev; int timeout_work; } ;
struct nfc_digital_dev {int dummy; } ;


 int ECANCELED ;





 int cancel_delayed_work (int *) ;
 int dev_dbg (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct trf7970a* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int trf7970a_send_err_upstream (struct trf7970a*,int ) ;

__attribute__((used)) static void trf7970a_abort_cmd(struct nfc_digital_dev *ddev)
{
 struct trf7970a *trf = nfc_digital_get_drvdata(ddev);

 dev_dbg(trf->dev, "Abort process initiated\n");

 mutex_lock(&trf->lock);

 switch (trf->state) {
 case 129:
 case 131:
 case 130:
 case 128:
  trf->aborting = 1;
  break;
 case 132:
  trf->ignore_timeout = !cancel_delayed_work(&trf->timeout_work);
  trf7970a_send_err_upstream(trf, -ECANCELED);
  dev_dbg(trf->dev, "Abort process complete\n");
  break;
 default:
  break;
 }

 mutex_unlock(&trf->lock);
}
