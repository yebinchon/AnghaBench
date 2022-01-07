
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int fw_status_len; void* raw_fw_status; void* fw_status; void* tx_res_if; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int wl1271_setup(struct wl1271 *wl)
{
 wl->raw_fw_status = kzalloc(wl->fw_status_len, GFP_KERNEL);
 if (!wl->raw_fw_status)
  goto err;

 wl->fw_status = kzalloc(sizeof(*wl->fw_status), GFP_KERNEL);
 if (!wl->fw_status)
  goto err;

 wl->tx_res_if = kzalloc(sizeof(*wl->tx_res_if), GFP_KERNEL);
 if (!wl->tx_res_if)
  goto err;

 return 0;
err:
 kfree(wl->fw_status);
 kfree(wl->raw_fw_status);
 return -ENOMEM;
}
