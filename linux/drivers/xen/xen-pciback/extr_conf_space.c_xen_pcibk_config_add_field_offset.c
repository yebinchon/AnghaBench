
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_dev_data {int config_fields; } ;
struct pci_dev {int dev; } ;
struct config_field_entry {unsigned int base_offset; int list; int * data; struct config_field const* field; } ;
struct config_field {void* (* init ) (struct pci_dev*,int ) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int OFFSET (struct config_field_entry*) ;
 int PTR_ERR (void*) ;
 int dev_dbg (int *,char*,int ) ;
 int kfree (struct config_field_entry*) ;
 struct config_field_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct xen_pcibk_dev_data* pci_get_drvdata (struct pci_dev*) ;
 void* stub1 (struct pci_dev*,int ) ;
 int xen_pcibk_field_is_dup (struct pci_dev*,int ) ;

int xen_pcibk_config_add_field_offset(struct pci_dev *dev,
        const struct config_field *field,
        unsigned int base_offset)
{
 int err = 0;
 struct xen_pcibk_dev_data *dev_data = pci_get_drvdata(dev);
 struct config_field_entry *cfg_entry;
 void *tmp;

 cfg_entry = kmalloc(sizeof(*cfg_entry), GFP_KERNEL);
 if (!cfg_entry) {
  err = -ENOMEM;
  goto out;
 }

 cfg_entry->data = ((void*)0);
 cfg_entry->field = field;
 cfg_entry->base_offset = base_offset;


 err = xen_pcibk_field_is_dup(dev, OFFSET(cfg_entry));
 if (err)
  goto out;

 if (field->init) {
  tmp = field->init(dev, OFFSET(cfg_entry));

  if (IS_ERR(tmp)) {
   err = PTR_ERR(tmp);
   goto out;
  }

  cfg_entry->data = tmp;
 }

 dev_dbg(&dev->dev, "added config field at offset 0x%02x\n",
  OFFSET(cfg_entry));
 list_add_tail(&cfg_entry->list, &dev_data->config_fields);

out:
 if (err)
  kfree(cfg_entry);

 return err;
}
