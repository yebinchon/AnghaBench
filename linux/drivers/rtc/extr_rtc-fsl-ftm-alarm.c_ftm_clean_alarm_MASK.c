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
struct ftm_rtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTM_CNTIN ; 
 int /*<<< orphan*/  FTM_MOD ; 
 int /*<<< orphan*/  FUNC0 (struct ftm_rtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftm_rtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftm_rtc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct ftm_rtc *rtc)
{
	FUNC0(rtc);

	FUNC2(rtc, FTM_CNTIN, 0x00);
	FUNC2(rtc, FTM_MOD, ~0U);

	FUNC1(rtc);
}