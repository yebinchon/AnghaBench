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
typedef  int /*<<< orphan*/  u8 ;
struct whc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WUSBCMD_BCID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct whc *whc, u8 bcid)
{
	FUNC1(whc, WUSBCMD_BCID_MASK, FUNC0(bcid));
	return 0;
}