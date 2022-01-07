
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_sci_resource {int sets; TYPE_2__* desc; } ;
struct TYPE_3__ {scalar_t__ dev_index; } ;
struct msi_desc {int list; TYPE_1__ inta; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int num; scalar_t__ start; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 struct msi_desc* alloc_msi_entry (struct device*,int,int *) ;
 int dev_to_msi_list (struct device*) ;
 int list_add_tail (int *,int ) ;
 int ti_sci_inta_msi_free_descs (struct device*) ;

__attribute__((used)) static int ti_sci_inta_msi_alloc_descs(struct device *dev,
           struct ti_sci_resource *res)
{
 struct msi_desc *msi_desc;
 int set, i, count = 0;

 for (set = 0; set < res->sets; set++) {
  for (i = 0; i < res->desc[set].num; i++) {
   msi_desc = alloc_msi_entry(dev, 1, ((void*)0));
   if (!msi_desc) {
    ti_sci_inta_msi_free_descs(dev);
    return -ENOMEM;
   }

   msi_desc->inta.dev_index = res->desc[set].start + i;
   INIT_LIST_HEAD(&msi_desc->list);
   list_add_tail(&msi_desc->list, dev_to_msi_list(dev));
   count++;
  }
 }

 return count;
}
