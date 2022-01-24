#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  i; scalar_t__ addr; } ;
union cvmx_buf_ptr {TYPE_3__ s; } ;
struct TYPE_7__ {int bufs; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_10__ {union cvmx_buf_ptr packet_ptr; TYPE_2__ word2; } ;
typedef  TYPE_4__ cvmx_wqe_t ;

/* Variables and functions */
 int CVMX_FPA_PACKET_POOL_SIZE ; 
 int /*<<< orphan*/  CVMX_FPA_WQE_POOL ; 
 TYPE_4__* FUNC0 (union cvmx_buf_ptr) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(void *work_queue_entry)
{
	cvmx_wqe_t *work = work_queue_entry;

	int segments = work->word2.s.bufs;
	union cvmx_buf_ptr segment_ptr = work->packet_ptr;

	while (segments--) {
		union cvmx_buf_ptr next_ptr = *(union cvmx_buf_ptr *)
			FUNC2(segment_ptr.s.addr - 8);
		if (FUNC3(!segment_ptr.s.i))
			FUNC1(FUNC0(segment_ptr),
				      segment_ptr.s.pool,
				      CVMX_FPA_PACKET_POOL_SIZE / 128);
		segment_ptr = next_ptr;
	}
	FUNC1(work, CVMX_FPA_WQE_POOL, 1);

	return 0;
}