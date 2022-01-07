
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1251 {TYPE_1__* if_ops; } ;
struct TYPE_2__ {int (* read ) (struct wl1251*,int,void*,size_t) ;} ;


 int stub1 (struct wl1251*,int,void*,size_t) ;
 int wl1251_translate_mem_addr (struct wl1251*,int) ;

void wl1251_mem_read(struct wl1251 *wl, int addr, void *buf, size_t len)
{
 int physical;

 physical = wl1251_translate_mem_addr(wl, addr);

 wl->if_ops->read(wl, physical, buf, len);
}
