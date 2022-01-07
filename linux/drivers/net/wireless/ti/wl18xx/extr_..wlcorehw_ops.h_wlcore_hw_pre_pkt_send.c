
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* pre_pkt_send ) (struct wl1271*,int ,int ) ;} ;


 int stub1 (struct wl1271*,int ,int ) ;

__attribute__((used)) static inline u32
wlcore_hw_pre_pkt_send(struct wl1271 *wl, u32 buf_offset, u32 last_len)
{
 if (wl->ops->pre_pkt_send)
  return wl->ops->pre_pkt_send(wl, buf_offset, last_len);

 return buf_offset;
}
