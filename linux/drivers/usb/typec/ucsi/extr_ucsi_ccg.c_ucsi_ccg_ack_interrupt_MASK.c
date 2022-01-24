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
struct ucsi_ccg {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  CCGX_RAB_INTR_REG ; 
 int FUNC0 (struct ucsi_ccg*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC1 (struct ucsi_ccg*,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(struct ucsi_ccg *uc)
{
	int status;
	unsigned char data;

	status = FUNC0(uc, CCGX_RAB_INTR_REG, &data, sizeof(data));
	if (status < 0)
		return status;

	return FUNC1(uc, CCGX_RAB_INTR_REG, &data, sizeof(data));
}