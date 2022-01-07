
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_aux_drv {TYPE_1__* bus; int chain; } ;
struct TYPE_2__ {int drivers; } ;


 int GFP_KERNEL ;
 struct via_aux_drv* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline bool via_aux_add(struct via_aux_drv *drv)
{
 struct via_aux_drv *data = kmalloc(sizeof(*data), GFP_KERNEL);

 if (!data)
  return 0;

 *data = *drv;
 list_add_tail(&data->chain, &data->bus->drivers);
 return 1;
}
