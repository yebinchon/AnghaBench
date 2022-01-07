
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {int dev; } ;


 int get_device (int *) ;

__attribute__((used)) static inline struct tb_switch *tb_switch_get(struct tb_switch *sw)
{
 if (sw)
  get_device(&sw->dev);
 return sw;
}
