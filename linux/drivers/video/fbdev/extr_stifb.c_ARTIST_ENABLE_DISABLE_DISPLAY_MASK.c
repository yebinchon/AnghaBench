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
typedef  int /*<<< orphan*/  u32 ;
struct stifb_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct stifb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_21 ; 
 int /*<<< orphan*/  REG_27 ; 
 int /*<<< orphan*/  FUNC1 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct stifb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct stifb_info *fb, int enable) 
{
	u32 DregsMiscVideo = REG_21;
	u32 DregsMiscCtl = REG_27;
	
	FUNC1(fb);
	if (enable) {
	  FUNC2(FUNC0(fb, DregsMiscVideo) | 0x0A000000, fb, DregsMiscVideo);
	  FUNC2(FUNC0(fb, DregsMiscCtl)   | 0x00800000, fb, DregsMiscCtl);
	} else {
	  FUNC2(FUNC0(fb, DregsMiscVideo) & ~0x0A000000, fb, DregsMiscVideo);
	  FUNC2(FUNC0(fb, DregsMiscCtl)   & ~0x00800000, fb, DregsMiscCtl);
	}
}