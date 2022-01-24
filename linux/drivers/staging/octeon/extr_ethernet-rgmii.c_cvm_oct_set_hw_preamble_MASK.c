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
struct TYPE_4__ {unsigned long long port_bit; } ;
union cvmx_ipd_sub_port_fcs {void* u64; TYPE_2__ s; } ;
union cvmx_gmxx_rxx_int_reg {void* u64; } ;
struct TYPE_3__ {int pre_chk; } ;
union cvmx_gmxx_rxx_frm_ctl {void* u64; TYPE_1__ s; } ;
struct octeon_ethernet {unsigned long long port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  CVMX_IPD_SUB_PORT_FCS ; 
 int FUNC2 (unsigned long long) ; 
 int FUNC3 (unsigned long long) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC6(struct octeon_ethernet *priv, bool enable)
{
	union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;
	union cvmx_ipd_sub_port_fcs ipd_sub_port_fcs;
	union cvmx_gmxx_rxx_int_reg gmxx_rxx_int_reg;
	int interface = FUNC3(priv->port);
	int index = FUNC2(priv->port);

	/* Set preamble checking. */
	gmxx_rxx_frm_ctl.u64 = FUNC4(FUNC0(index,
								   interface));
	gmxx_rxx_frm_ctl.s.pre_chk = enable;
	FUNC5(FUNC0(index, interface),
		       gmxx_rxx_frm_ctl.u64);

	/* Set FCS stripping. */
	ipd_sub_port_fcs.u64 = FUNC4(CVMX_IPD_SUB_PORT_FCS);
	if (enable)
		ipd_sub_port_fcs.s.port_bit |= 1ull << priv->port;
	else
		ipd_sub_port_fcs.s.port_bit &=
					0xffffffffull ^ (1ull << priv->port);
	FUNC5(CVMX_IPD_SUB_PORT_FCS, ipd_sub_port_fcs.u64);

	/* Clear any error bits. */
	gmxx_rxx_int_reg.u64 = FUNC4(FUNC1(index,
								   interface));
	FUNC5(FUNC1(index, interface),
		       gmxx_rxx_int_reg.u64);
}