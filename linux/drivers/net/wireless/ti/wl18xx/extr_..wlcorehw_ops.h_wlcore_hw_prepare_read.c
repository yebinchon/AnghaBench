
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* prepare_read ) (struct wl1271*,int ,int ) ;} ;


 int stub1 (struct wl1271*,int ,int ) ;

__attribute__((used)) static inline int
wlcore_hw_prepare_read(struct wl1271 *wl, u32 rx_desc, u32 len)
{
 if (wl->ops->prepare_read)
  return wl->ops->prepare_read(wl, rx_desc, len);

 return 0;
}
