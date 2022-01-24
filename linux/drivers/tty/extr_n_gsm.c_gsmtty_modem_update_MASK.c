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
typedef  int u8 ;
struct gsm_dlci {int addr; int /*<<< orphan*/  gsm; } ;
struct gsm_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_MSC ; 
 int EA ; 
 int ENOMEM ; 
 struct gsm_control* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct gsm_control*) ; 
 int FUNC2 (struct gsm_dlci*) ; 

__attribute__((used)) static int FUNC3(struct gsm_dlci *dlci, u8 brk)
{
	u8 modembits[5];
	struct gsm_control *ctrl;
	int len = 2;

	if (brk)
		len++;

	modembits[0] = len << 1 | EA;		/* Data bytes */
	modembits[1] = dlci->addr << 2 | 3;	/* DLCI, EA, 1 */
	modembits[2] = FUNC2(dlci) << 1 | EA;
	if (brk)
		modembits[3] = brk << 4 | 2 | EA;	/* Valid, EA */
	ctrl = FUNC0(dlci->gsm, CMD_MSC, modembits, len + 1);
	if (ctrl == NULL)
		return -ENOMEM;
	return FUNC1(dlci->gsm, ctrl);
}