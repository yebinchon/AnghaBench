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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,unsigned char) ; 

void FUNC2(struct adapter *padapter, unsigned char channel)
{
	/* saved channel info */
	FUNC1(padapter, channel);
	FUNC0(padapter, channel);
}