
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl18xx_priv {scalar_t__ cmd_buf; } ;
struct wl1271 {struct wl18xx_priv* priv; } ;


 scalar_t__ WL18XX_CMD_MAX_SIZE ;
 int memcpy (scalar_t__,void*,size_t) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int wlcore_write (struct wl1271*,int,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int wl18xx_trigger_cmd(struct wl1271 *wl, int cmd_box_addr,
          void *buf, size_t len)
{
 struct wl18xx_priv *priv = wl->priv;

 memcpy(priv->cmd_buf, buf, len);
 memset(priv->cmd_buf + len, 0, WL18XX_CMD_MAX_SIZE - len);

 return wlcore_write(wl, cmd_box_addr, priv->cmd_buf,
       WL18XX_CMD_MAX_SIZE, 0);
}
