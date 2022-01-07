
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int firmware; } ;


 int allegro_free_buffer (struct allegro_dev*,int *) ;

__attribute__((used)) static void allegro_free_fw_codec(struct allegro_dev *dev)
{
 allegro_free_buffer(dev, &dev->firmware);
}
