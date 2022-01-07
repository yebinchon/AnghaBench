
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcsim {int up; int nfc_digital_dev; int recv_work; int send_work; int link_in; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int kfree (struct nfcsim*) ;
 int nfc_digital_free_device (int ) ;
 int nfc_digital_unregister_device (int ) ;
 int nfcsim_link_shutdown (int ) ;

__attribute__((used)) static void nfcsim_device_free(struct nfcsim *dev)
{
 nfc_digital_unregister_device(dev->nfc_digital_dev);

 dev->up = 0;

 nfcsim_link_shutdown(dev->link_in);

 cancel_delayed_work_sync(&dev->send_work);
 cancel_work_sync(&dev->recv_work);

 nfc_digital_free_device(dev->nfc_digital_dev);

 kfree(dev);
}
