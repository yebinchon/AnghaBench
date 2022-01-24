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
struct fb_info {int dummy; } ;
struct atafb_par {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
#define  FBCMD_GET_CURRENTPAR 129 
#define  FBCMD_SET_CURRENTPAR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int /*<<< orphan*/  current_par ; 

__attribute__((used)) static int
FUNC3(struct fb_info *info, unsigned int cmd, unsigned long arg)
{
	switch (cmd) {
#ifdef FBCMD_GET_CURRENTPAR
	case FBCMD_GET_CURRENTPAR:
		if (FUNC2((void *)arg, (void *)&current_par,
				 sizeof(struct atafb_par)))
			return -EFAULT;
		return 0;
#endif
#ifdef FBCMD_SET_CURRENTPAR
	case FBCMD_SET_CURRENTPAR:
		if (FUNC1((void *)&current_par, (void *)arg,
				   sizeof(struct atafb_par)))
			return -EFAULT;
		FUNC0(&current_par);
		return 0;
#endif
	}
	return -EINVAL;
}