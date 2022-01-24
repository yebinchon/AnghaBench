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
struct dcon_priv {int bl_val; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 struct dcon_priv* FUNC0 (struct backlight_device*) ; 

__attribute__((used)) static int FUNC1(struct backlight_device *dev)
{
	struct dcon_priv *dcon = FUNC0(dev);

	return dcon->bl_val;
}