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
 int /*<<< orphan*/  DAC_XGENIODATA ; 
 int FUNC0 (struct matrox_fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static int FUNC3(struct matrox_fb_info* minfo) {
	unsigned long flags;
	int v;

	FUNC1(flags);
	v = FUNC0(minfo, DAC_XGENIODATA);
	FUNC2(flags);
	return v;
}