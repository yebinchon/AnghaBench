#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cur_channel; } ;
struct adapter {TYPE_1__ mlmeextpriv; } ;
struct TYPE_4__ {scalar_t__ oper_channel; unsigned long on_oper_ch_time; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct adapter*) ; 

inline unsigned long FUNC1(struct adapter *adapter)
{
	if (adapter->mlmeextpriv.cur_channel == FUNC0(adapter)->oper_channel)
		return FUNC0(adapter)->on_oper_ch_time;
	else
		return 0;
}