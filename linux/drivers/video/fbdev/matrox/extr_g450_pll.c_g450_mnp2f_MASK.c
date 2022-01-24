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
struct matrox_fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrox_fb_info const*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

unsigned int FUNC2(const struct matrox_fb_info *minfo, unsigned int mnp)
{
	return FUNC1(mnp, FUNC0(minfo, mnp));
}