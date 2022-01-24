#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wl18xx_priv {scalar_t__ cmd_buf; } ;
struct wl1271 {struct wl18xx_priv* priv; } ;

/* Variables and functions */
 scalar_t__ WL18XX_CMD_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct wl1271*,int,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(struct wl1271 *wl, int cmd_box_addr,
			       void *buf, size_t len)
{
	struct wl18xx_priv *priv = wl->priv;

	FUNC0(priv->cmd_buf, buf, len);
	FUNC1(priv->cmd_buf + len, 0, WL18XX_CMD_MAX_SIZE - len);

	return FUNC2(wl, cmd_box_addr, priv->cmd_buf,
			    WL18XX_CMD_MAX_SIZE, false);
}