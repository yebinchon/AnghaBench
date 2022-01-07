
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wl1271 {int dummy; } ;


 int CMD_TEST ;
 int DEBUG_CMD ;
 int wl1271_cmd_send (struct wl1271*,int ,void*,size_t,size_t) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*) ;

int wl1271_cmd_test(struct wl1271 *wl, void *buf, size_t buf_len, u8 answer)
{
 int ret;
 size_t res_len = 0;

 wl1271_debug(DEBUG_CMD, "cmd test");

 if (answer)
  res_len = buf_len;

 ret = wl1271_cmd_send(wl, CMD_TEST, buf, buf_len, res_len);

 if (ret < 0) {
  wl1271_warning("TEST command failed");
  return ret;
 }

 return ret;
}
