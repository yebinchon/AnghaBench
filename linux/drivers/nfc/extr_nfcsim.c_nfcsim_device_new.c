
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcsim_link {int dummy; } ;
struct nfcsim {int nfc_digital_dev; struct nfcsim_link* link_out; struct nfcsim_link* link_in; int recv_work; int send_work; } ;


 int ENOMEM ;
 struct nfcsim* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int NFCSIM_CAPABILITIES ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int kfree (struct nfcsim*) ;
 struct nfcsim* kzalloc (int,int ) ;
 int nfc_digital_allocate_device (int *,int ,int ,int ,int ) ;
 int nfc_digital_free_device (int ) ;
 int nfc_digital_register_device (int ) ;
 int nfc_digital_set_drvdata (int ,struct nfcsim*) ;
 int nfcsim_debugfs_init_dev (struct nfcsim*) ;
 int nfcsim_digital_ops ;
 int nfcsim_recv_wq ;
 int nfcsim_send_wq ;
 int pr_err (char*,int) ;

__attribute__((used)) static struct nfcsim *nfcsim_device_new(struct nfcsim_link *link_in,
     struct nfcsim_link *link_out)
{
 struct nfcsim *dev;
 int rc;

 dev = kzalloc(sizeof(struct nfcsim), GFP_KERNEL);
 if (!dev)
  return ERR_PTR(-ENOMEM);

 INIT_DELAYED_WORK(&dev->send_work, nfcsim_send_wq);
 INIT_WORK(&dev->recv_work, nfcsim_recv_wq);

 dev->nfc_digital_dev =
   nfc_digital_allocate_device(&nfcsim_digital_ops,
          NFC_PROTO_NFC_DEP_MASK,
          NFCSIM_CAPABILITIES,
          0, 0);
 if (!dev->nfc_digital_dev) {
  kfree(dev);
  return ERR_PTR(-ENOMEM);
 }

 nfc_digital_set_drvdata(dev->nfc_digital_dev, dev);

 dev->link_in = link_in;
 dev->link_out = link_out;

 rc = nfc_digital_register_device(dev->nfc_digital_dev);
 if (rc) {
  pr_err("Could not register digital device (%d)\n", rc);
  nfc_digital_free_device(dev->nfc_digital_dev);
  kfree(dev);

  return ERR_PTR(rc);
 }

 nfcsim_debugfs_init_dev(dev);

 return dev;
}
