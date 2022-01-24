#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* write ) (struct fbtft_par*,void*,size_t) ;} ;
struct TYPE_4__ {scalar_t__ dc; } ;
struct fbtft_par {TYPE_3__* info; TYPE_2__ fbtftops; TYPE_1__ gpio; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (struct fbtft_par*,void*,size_t) ; 

int FUNC3(struct fbtft_par *par, void *buf, size_t len, int dc)
{
	int ret;

	if (par->gpio.dc)
		FUNC1(par->gpio.dc, dc);

	ret = par->fbtftops.write(par, buf, len);
	if (ret < 0)
		FUNC0(par->info->device,
			"write() failed and returned %d\n", ret);
	return ret;
}