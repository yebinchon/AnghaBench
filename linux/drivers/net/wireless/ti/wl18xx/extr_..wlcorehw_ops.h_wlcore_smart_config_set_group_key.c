
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* smart_config_set_group_key ) (struct wl1271*,int ,int ,int *) ;} ;


 int EINVAL ;
 int stub1 (struct wl1271*,int ,int ,int *) ;

__attribute__((used)) static inline int
wlcore_smart_config_set_group_key(struct wl1271 *wl, u16 group_id,
      u8 key_len, u8 *key)
{
 if (!wl->ops->smart_config_set_group_key)
  return -EINVAL;

 return wl->ops->smart_config_set_group_key(wl, group_id, key_len, key);
}
