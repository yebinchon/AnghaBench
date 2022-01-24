#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int tc_en; int tc_thr; } ;
union cvmx_sso_wq_int_thrx {scalar_t__ u64; TYPE_1__ s; } ;
struct TYPE_7__ {int tc_en; int tc_thr; } ;
union cvmx_pow_wq_int_thrx {scalar_t__ u64; TYPE_2__ s; } ;
struct TYPE_8__ {int pc_thr; } ;
union cvmx_pow_wq_int_pc {scalar_t__ u64; TYPE_3__ s; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int group; int /*<<< orphan*/  napi; scalar_t__ irq; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  CVMX_POW_WQ_INT_PC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CVMX_SSO_WQ_INT_PC ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 scalar_t__ OCTEON_IRQ_WORKQ0 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int TOTAL_NUMBER_OF_PORTS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct net_device** cvm_oct_device ; 
 int /*<<< orphan*/  cvm_oct_do_interrupt ; 
 int /*<<< orphan*/  cvm_oct_napi_poll ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* oct_rx_group ; 
 int /*<<< orphan*/  oct_rx_ready ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int pow_receive_groups ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_napi_weight ; 

void FUNC13(void)
{
	int i;
	struct net_device *dev_for_napi = NULL;

	for (i = 0; i < TOTAL_NUMBER_OF_PORTS; i++) {
		if (cvm_oct_device[i]) {
			dev_for_napi = cvm_oct_device[i];
			break;
		}
	}

	if (!dev_for_napi)
		FUNC11("No net_devices were allocated.");

	for (i = 0; i < FUNC0(oct_rx_group); i++) {
		int ret;

		if (!(pow_receive_groups & FUNC1(i)))
			continue;

		FUNC10(dev_for_napi, &oct_rx_group[i].napi,
			       cvm_oct_napi_poll, rx_napi_weight);
		FUNC8(&oct_rx_group[i].napi);

		oct_rx_group[i].irq = OCTEON_IRQ_WORKQ0 + i;
		oct_rx_group[i].group = i;

		/* Register an IRQ handler to receive POW interrupts */
		ret = FUNC12(oct_rx_group[i].irq, cvm_oct_do_interrupt, 0,
				  "Ethernet", &oct_rx_group[i].napi);
		if (ret)
			FUNC11("Could not acquire Ethernet IRQ %d\n",
			      oct_rx_group[i].irq);

		FUNC7(oct_rx_group[i].irq);

		/* Enable POW interrupt when our port has at least one packet */
		if (FUNC4(OCTEON_CN68XX)) {
			union cvmx_sso_wq_int_thrx int_thr;
			union cvmx_pow_wq_int_pc int_pc;

			int_thr.u64 = 0;
			int_thr.s.tc_en = 1;
			int_thr.s.tc_thr = 1;
			FUNC6(FUNC3(i), int_thr.u64);

			int_pc.u64 = 0;
			int_pc.s.pc_thr = 5;
			FUNC6(CVMX_SSO_WQ_INT_PC, int_pc.u64);
		} else {
			union cvmx_pow_wq_int_thrx int_thr;
			union cvmx_pow_wq_int_pc int_pc;

			int_thr.u64 = 0;
			int_thr.s.tc_en = 1;
			int_thr.s.tc_thr = 1;
			FUNC6(FUNC2(i), int_thr.u64);

			int_pc.u64 = 0;
			int_pc.s.pc_thr = 5;
			FUNC6(CVMX_POW_WQ_INT_PC, int_pc.u64);
		}

		/* Schedule NAPI now. This will indirectly enable the
		 * interrupt.
		 */
		FUNC9(&oct_rx_group[i].napi);
	}
	FUNC5(&oct_rx_ready);
}