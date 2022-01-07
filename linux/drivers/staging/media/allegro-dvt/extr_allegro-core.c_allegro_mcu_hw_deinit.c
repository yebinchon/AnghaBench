
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int suballocator; int v4l2_dev; } ;


 int allegro_free_buffer (struct allegro_dev*,int *) ;
 int allegro_mcu_disable_interrupts (struct allegro_dev*) ;
 int allegro_mcu_reset (struct allegro_dev*) ;
 int v4l2_warn (int *,char*) ;

__attribute__((used)) static int allegro_mcu_hw_deinit(struct allegro_dev *dev)
{
 int err;

 err = allegro_mcu_reset(dev);
 if (err)
  v4l2_warn(&dev->v4l2_dev,
     "mcu failed to enter sleep state\n");

 err = allegro_mcu_disable_interrupts(dev);
 if (err)
  v4l2_warn(&dev->v4l2_dev,
     "failed to disable interrupts\n");

 allegro_free_buffer(dev, &dev->suballocator);

 return 0;
}
