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
struct v4l2_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct matrox_fb_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct matrox_fb_info*,int) ; 

__attribute__((used)) static int FUNC2(void* md, struct v4l2_control *p) {
	int i;
	struct matrox_fb_info *minfo = md;
	
	i = FUNC0(p->id);
	if (i < 0) return -EINVAL;
	p->value = *FUNC1(minfo, i);
	return 0;
}