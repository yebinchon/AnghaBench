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
struct slgt_info {int signals; } ;

/* Variables and functions */
 unsigned char BIT2 ; 
 unsigned char BIT3 ; 
 int SerialSignal_DTR ; 
 int SerialSignal_RTS ; 
 int /*<<< orphan*/  VCR ; 
 unsigned char FUNC0 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC2(struct slgt_info *info)
{
	unsigned char val = FUNC0(info, VCR);
	if (info->signals & SerialSignal_DTR)
		val |= BIT3;
	else
		val &= ~BIT3;
	if (info->signals & SerialSignal_RTS)
		val |= BIT2;
	else
		val &= ~BIT2;
	FUNC1(info, VCR, val);
}