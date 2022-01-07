
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1251 {TYPE_1__* if_ops; } ;
struct TYPE_2__ {int (* read ) (struct wl1251*,int,int *,int) ;int (* read_elp ) (struct wl1251*,int,int *) ;} ;


 int stub1 (struct wl1251*,int,int *) ;
 int stub2 (struct wl1251*,int,int *,int) ;

__attribute__((used)) static inline u32 wl1251_read_elp(struct wl1251 *wl, int addr)
{
 u32 response;

 if (wl->if_ops->read_elp)
  wl->if_ops->read_elp(wl, addr, &response);
 else
  wl->if_ops->read(wl, addr, &response, sizeof(u32));

 return response;
}
