
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static inline void tb_switch_put(struct tb_switch *sw)
{
 put_device(&sw->dev);
}
