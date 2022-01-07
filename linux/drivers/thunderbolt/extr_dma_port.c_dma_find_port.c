
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tb_switch {TYPE_1__* tb; } ;
struct TYPE_2__ {int ctl; } ;


 int ARRAY_SIZE (int const*) ;
 int DMA_PORT_TIMEOUT ;
 int ENODEV ;
 int TB_TYPE_NHI ;
 int dma_port_read (int ,int*,int ,int const,int,int,int ) ;
 int tb_route (struct tb_switch*) ;

__attribute__((used)) static int dma_find_port(struct tb_switch *sw)
{
 static const int ports[] = { 3, 5, 7 };
 int i;





 for (i = 0; i < ARRAY_SIZE(ports); i++) {
  u32 type;
  int ret;

  ret = dma_port_read(sw->tb->ctl, &type, tb_route(sw), ports[i],
        2, 1, DMA_PORT_TIMEOUT);
  if (!ret && (type & 0xffffff) == TB_TYPE_NHI)
   return ports[i];
 }

 return -ENODEV;
}
