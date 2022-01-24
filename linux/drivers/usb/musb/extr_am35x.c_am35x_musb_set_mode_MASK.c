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
typedef  int /*<<< orphan*/  u8 ;
struct omap_musb_board_data {int /*<<< orphan*/  (* set_mode ) (int /*<<< orphan*/ ) ;} ;
struct musb_hdrc_platform_data {struct omap_musb_board_data* board_data; } ;
struct musb {struct device* controller; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 struct musb_hdrc_platform_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct musb *musb, u8 musb_mode)
{
	struct device *dev = musb->controller;
	struct musb_hdrc_platform_data *plat = FUNC0(dev);
	struct omap_musb_board_data *data = plat->board_data;
	int     retval = 0;

	if (data->set_mode)
		data->set_mode(musb_mode);
	else
		retval = -EIO;

	return retval;
}