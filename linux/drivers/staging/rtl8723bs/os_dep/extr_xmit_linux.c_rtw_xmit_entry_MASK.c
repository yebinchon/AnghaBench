#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  truesize; } ;
typedef  TYPE_1__ _pkt ;
typedef  int /*<<< orphan*/  _nic_hdl ;

/* Variables and functions */
 int /*<<< orphan*/  MSTAT_ALLOC_SUCCESS ; 
 int /*<<< orphan*/  MSTAT_TYPE_SKB ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(_pkt *pkt, _nic_hdl pnetdev)
{
	int ret = 0;

	if (pkt) {
		FUNC1(MSTAT_TYPE_SKB, MSTAT_ALLOC_SUCCESS, pkt->truesize);
		ret = FUNC0(pkt, pnetdev);
	}

	return ret;
}