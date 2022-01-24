#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int pkt_lend; int wqe_lend; } ;
union cvmx_ipd_ctl_status {int /*<<< orphan*/  u64; TYPE_1__ s; } ;

/* Variables and functions */
 scalar_t__ CVMX_FPA_OUTPUT_BUFFER_POOL ; 
 int /*<<< orphan*/  CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE ; 
 scalar_t__ CVMX_FPA_PACKET_POOL ; 
 int /*<<< orphan*/  CVMX_FPA_PACKET_POOL_SIZE ; 
 scalar_t__ CVMX_FPA_WQE_POOL ; 
 int /*<<< orphan*/  CVMX_FPA_WQE_POOL_SIZE ; 
 int /*<<< orphan*/  CVMX_IPD_CTL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int num_packet_buffers ; 

__attribute__((used)) static void FUNC5(void)
{
	/* Setup the FPA */
	FUNC1();
	FUNC0(CVMX_FPA_PACKET_POOL, CVMX_FPA_PACKET_POOL_SIZE,
			     num_packet_buffers);
	FUNC0(CVMX_FPA_WQE_POOL, CVMX_FPA_WQE_POOL_SIZE,
			     num_packet_buffers);
	if (CVMX_FPA_OUTPUT_BUFFER_POOL != CVMX_FPA_PACKET_POOL)
		FUNC0(CVMX_FPA_OUTPUT_BUFFER_POOL,
				     CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, 1024);

#ifdef __LITTLE_ENDIAN
	{
		union cvmx_ipd_ctl_status ipd_ctl_status;

		ipd_ctl_status.u64 = cvmx_read_csr(CVMX_IPD_CTL_STATUS);
		ipd_ctl_status.s.pkt_lend = 1;
		ipd_ctl_status.s.wqe_lend = 1;
		cvmx_write_csr(CVMX_IPD_CTL_STATUS, ipd_ctl_status.u64);
	}
#endif

	FUNC2(num_packet_buffers / 4, num_packet_buffers / 8);
}