
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_msi_devres {struct msi_desc* entry; struct ntb_msi_desc* msi_desc; struct ntb_dev* ntb; } ;
struct ntb_msi_desc {int dummy; } ;
struct ntb_dev {int dev; } ;
struct msi_desc {struct ntb_msi_devres* write_msi_msg_data; int write_msi_msg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devres_add (int *,struct ntb_msi_devres*) ;
 struct ntb_msi_devres* devres_alloc (int ,int,int ) ;
 int ntb_msi_write_msg ;
 int ntbm_msi_callback_release ;

__attribute__((used)) static int ntbm_msi_setup_callback(struct ntb_dev *ntb, struct msi_desc *entry,
       struct ntb_msi_desc *msi_desc)
{
 struct ntb_msi_devres *dr;

 dr = devres_alloc(ntbm_msi_callback_release,
     sizeof(struct ntb_msi_devres), GFP_KERNEL);
 if (!dr)
  return -ENOMEM;

 dr->ntb = ntb;
 dr->entry = entry;
 dr->msi_desc = msi_desc;

 devres_add(&ntb->dev, dr);

 dr->entry->write_msi_msg = ntb_msi_write_msg;
 dr->entry->write_msi_msg_data = dr;

 return 0;
}
