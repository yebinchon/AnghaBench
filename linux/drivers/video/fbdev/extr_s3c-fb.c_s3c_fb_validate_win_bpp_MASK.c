#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int valid_bpp; } ;
struct s3c_fb_win {TYPE_1__ variant; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static bool FUNC1(struct s3c_fb_win *win, unsigned int bpp)
{
	return win->variant.valid_bpp & FUNC0(bpp);
}