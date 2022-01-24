#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * flag_buf; int /*<<< orphan*/ * tmp_rx_buf; } ;
typedef  TYPE_1__ SLMP_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(SLMP_INFO *info)
{
	FUNC0(info->tmp_rx_buf);
	info->tmp_rx_buf = NULL;
	FUNC0(info->flag_buf);
	info->flag_buf = NULL;
}