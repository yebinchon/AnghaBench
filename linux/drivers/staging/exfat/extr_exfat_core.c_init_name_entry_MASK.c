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
typedef  int u16 ;
struct name_dentry_t {int flags; scalar_t__ unicode_0_14; } ;
struct dentry_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  TYPE_EXTEND ; 
 int /*<<< orphan*/  FUNC1 (struct dentry_t*,int /*<<< orphan*/ ) ; 

void FUNC2(struct name_dentry_t *ep, u16 *uniname)
{
	int i;

	FUNC1((struct dentry_t *)ep, TYPE_EXTEND);
	ep->flags = 0x0;

	for (i = 0; i < 30; i++, i++) {
		FUNC0(ep->unicode_0_14 + i, *uniname);
		if (*uniname == 0x0)
			break;
		uniname++;
	}
}