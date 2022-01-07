
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct wl1271 {int dummy; } ;
struct acx_header {void* len; void* id; } ;


 int CMD_INTERROGATE ;
 int DEBUG_CMD ;
 void* cpu_to_le16 (size_t) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct acx_header*,size_t,size_t) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl1271_cmd_interrogate(struct wl1271 *wl, u16 id, void *buf,
      size_t cmd_len, size_t res_len)
{
 struct acx_header *acx = buf;
 int ret;

 wl1271_debug(DEBUG_CMD, "cmd interrogate");

 acx->id = cpu_to_le16(id);


 acx->len = cpu_to_le16(res_len - sizeof(*acx));

 ret = wl1271_cmd_send(wl, CMD_INTERROGATE, acx, cmd_len, res_len);
 if (ret < 0)
  wl1271_error("INTERROGATE command failed");

 return ret;
}
