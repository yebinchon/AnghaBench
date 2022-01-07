
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_rx_timeout {int upsd_timeout; int ps_poll_timeout; } ;


 int ACX_SERVICE_PERIOD_TIMEOUT ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RX_TIMEOUT_PS_POLL_DEF ;
 int RX_TIMEOUT_UPSD_DEF ;
 int kfree (struct acx_rx_timeout*) ;
 struct acx_rx_timeout* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_rx_timeout*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_service_period_timeout(struct wl1251 *wl)
{
 struct acx_rx_timeout *rx_timeout;
 int ret;

 rx_timeout = kzalloc(sizeof(*rx_timeout), GFP_KERNEL);
 if (!rx_timeout)
  return -ENOMEM;

 wl1251_debug(DEBUG_ACX, "acx service period timeout");

 rx_timeout->ps_poll_timeout = RX_TIMEOUT_PS_POLL_DEF;
 rx_timeout->upsd_timeout = RX_TIMEOUT_UPSD_DEF;

 ret = wl1251_cmd_configure(wl, ACX_SERVICE_PERIOD_TIMEOUT,
       rx_timeout, sizeof(*rx_timeout));
 if (ret < 0) {
  wl1251_warning("failed to set service period timeout: %d",
          ret);
  goto out;
 }

out:
 kfree(rx_timeout);
 return ret;
}
