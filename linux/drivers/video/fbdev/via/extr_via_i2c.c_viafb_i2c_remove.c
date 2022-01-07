
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_i2c_stuff {int adapter; scalar_t__ is_active; } ;
struct platform_device {int dummy; } ;


 int VIAFB_NUM_PORTS ;
 int i2c_del_adapter (int *) ;
 struct via_i2c_stuff* via_i2c_par ;

__attribute__((used)) static int viafb_i2c_remove(struct platform_device *platdev)
{
 int i;

 for (i = 0; i < VIAFB_NUM_PORTS; i++) {
  struct via_i2c_stuff *i2c_stuff = &via_i2c_par[i];




  if (i2c_stuff->is_active)
   i2c_del_adapter(&i2c_stuff->adapter);
 }
 return 0;
}
