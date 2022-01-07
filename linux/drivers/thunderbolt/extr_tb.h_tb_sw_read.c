
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tb_switch {TYPE_1__* tb; scalar_t__ is_unplugged; } ;
typedef enum tb_cfg_space { ____Placeholder_tb_cfg_space } tb_cfg_space ;
struct TYPE_2__ {int ctl; } ;


 int ENODEV ;
 int tb_cfg_read (int ,void*,int ,int ,int,int ,int ) ;
 int tb_route (struct tb_switch*) ;

__attribute__((used)) static inline int tb_sw_read(struct tb_switch *sw, void *buffer,
        enum tb_cfg_space space, u32 offset, u32 length)
{
 if (sw->is_unplugged)
  return -ENODEV;
 return tb_cfg_read(sw->tb->ctl,
      buffer,
      tb_route(sw),
      0,
      space,
      offset,
      length);
}
