
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {unsigned long channel_user_ids; } ;


 unsigned long EBUSY ;
 unsigned long ffz (unsigned long) ;

__attribute__((used)) static unsigned long allegro_next_user_id(struct allegro_dev *dev)
{
 if (dev->channel_user_ids == ~0UL)
  return -EBUSY;

 return ffz(dev->channel_user_ids);
}
