
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tegra_xusb_padctl {int dev; } ;
struct TYPE_7__ {struct device_node* of_node; int * type; int parent; } ;
struct tegra_xusb_pad {TYPE_2__ dev; TYPE_1__* soc; struct tegra_xusb_padctl* padctl; int list; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int name; } ;


 int INIT_LIST_HEAD (int *) ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_add (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 int device_unregister (TYPE_2__*) ;
 int tegra_xusb_pad_type ;

int tegra_xusb_pad_init(struct tegra_xusb_pad *pad,
   struct tegra_xusb_padctl *padctl,
   struct device_node *np)
{
 int err;

 device_initialize(&pad->dev);
 INIT_LIST_HEAD(&pad->list);
 pad->dev.parent = padctl->dev;
 pad->dev.type = &tegra_xusb_pad_type;
 pad->dev.of_node = np;
 pad->padctl = padctl;

 err = dev_set_name(&pad->dev, "%s", pad->soc->name);
 if (err < 0)
  goto unregister;

 err = device_add(&pad->dev);
 if (err < 0)
  goto unregister;

 return 0;

unregister:
 device_unregister(&pad->dev);
 return err;
}
