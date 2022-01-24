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

/* Variables and functions */
 int /*<<< orphan*/  CVMX_FPA_PACKET_POOL ; 
 int /*<<< orphan*/  CVMX_FPA_PACKET_POOL_SIZE ; 
 int /*<<< orphan*/  FAU_NUM_PACKET_BUFFERS_TO_FREE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(int fill_threshold)
{
	int number_to_free;
	int num_freed;
	/* Refill the packet buffer pool */
	number_to_free =
		FUNC2(FAU_NUM_PACKET_BUFFERS_TO_FREE, 0);

	if (number_to_free > fill_threshold) {
		FUNC1(FAU_NUM_PACKET_BUFFERS_TO_FREE,
				      -number_to_free);
		num_freed = FUNC0(CVMX_FPA_PACKET_POOL,
						 CVMX_FPA_PACKET_POOL_SIZE,
						 number_to_free);
		if (num_freed != number_to_free) {
			FUNC1(FAU_NUM_PACKET_BUFFERS_TO_FREE,
					      number_to_free - num_freed);
		}
	}
}