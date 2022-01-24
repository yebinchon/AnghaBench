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
typedef  int /*<<< orphan*/  u32 ;
struct slim_val_inf {int dummy; } ;
struct slim_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLIM_MSG_MC_REQUEST_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct slim_val_inf*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct slim_device*,struct slim_val_inf*,int /*<<< orphan*/ ) ; 

int FUNC2(struct slim_device *sdev, u32 addr, size_t count, u8 *val)
{
	struct slim_val_inf msg;

	FUNC0(&msg, addr, count, val, NULL);

	return FUNC1(sdev, &msg, SLIM_MSG_MC_REQUEST_VALUE);
}