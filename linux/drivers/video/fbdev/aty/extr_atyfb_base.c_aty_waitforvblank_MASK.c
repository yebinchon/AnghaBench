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
typedef  int u32 ;
struct aty_interrupt {unsigned int count; int /*<<< orphan*/  wait; } ;
struct atyfb_par {struct aty_interrupt vblank; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int FUNC0 (struct atyfb_par*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct atyfb_par *par, u32 crtc)
{
	struct aty_interrupt *vbl;
	unsigned int count;
	int ret;

	switch (crtc) {
	case 0:
		vbl = &par->vblank;
		break;
	default:
		return -ENODEV;
	}

	ret = FUNC0(par, 0);
	if (ret)
		return ret;

	count = vbl->count;
	ret = FUNC1(vbl->wait,
					       count != vbl->count, HZ/10);
	if (ret < 0)
		return ret;
	if (ret == 0) {
		FUNC0(par, 1);
		return -ETIMEDOUT;
	}

	return 0;
}