
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_fw_status {int dummy; } ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* convert_fw_status ) (struct wl1271*,void*,struct wl_fw_status*) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct wl1271*,void*,struct wl_fw_status*) ;

__attribute__((used)) static inline void
wlcore_hw_convert_fw_status(struct wl1271 *wl, void *raw_fw_status,
       struct wl_fw_status *fw_status)
{
 BUG_ON(!wl->ops->convert_fw_status);

 wl->ops->convert_fw_status(wl, raw_fw_status, fw_status);
}
