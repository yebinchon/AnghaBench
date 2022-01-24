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
struct ucc_slow_private {struct ucc_slow_info* us_info; } ;
struct ucc_slow_info {int /*<<< orphan*/  ucc_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  QE_CR_PROTOCOL_UNSPECIFIED ; 
 int /*<<< orphan*/  QE_GRACEFUL_STOP_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ucc_slow_private * uccs)
{
	struct ucc_slow_info *us_info = uccs->us_info;
	u32 id;

	id = FUNC1(us_info->ucc_num);
	FUNC0(QE_GRACEFUL_STOP_TX, id,
			 QE_CR_PROTOCOL_UNSPECIFIED, 0);
}