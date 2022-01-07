
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcsim {int link_in; } ;
struct nfc_digital_dev {int dummy; } ;


 struct nfcsim* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int nfcsim_link_recv_cancel (int ) ;

__attribute__((used)) static void nfcsim_abort_cmd(struct nfc_digital_dev *ddev)
{
 struct nfcsim *dev = nfc_digital_get_drvdata(ddev);

 nfcsim_link_recv_cancel(dev->link_in);
}
