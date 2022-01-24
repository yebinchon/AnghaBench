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
struct stifb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct stifb_info*,int) ; 

__attribute__((used)) static void 
FUNC2(struct stifb_info *fb) 
{
	FUNC0(fb);
	FUNC1(0x04000000, fb, 0x1000);
	FUNC1(0x02000000, fb, 0x1004);
	FUNC1(0xff000000, fb, 0x1008);
	FUNC1(0x05000000, fb, 0x1000);
	FUNC1(0x02000000, fb, 0x1004);
	FUNC1(0x03000000, fb, 0x1008);
}