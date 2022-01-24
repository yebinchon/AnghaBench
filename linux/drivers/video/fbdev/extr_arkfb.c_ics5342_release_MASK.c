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
struct dac_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_PSEUDO8_8 ; 
 int /*<<< orphan*/  FUNC0 (struct dac_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dac_info*) ; 

__attribute__((used)) static void FUNC2(struct dac_info *info)
{
	FUNC0(info, DAC_PSEUDO8_8);
	FUNC1(info);
}