#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int /*<<< orphan*/  hw_mac; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct qedi_ctx {int /*<<< orphan*/  cdev; TYPE_2__ dev_info; scalar_t__ ll2_mtu; int /*<<< orphan*/  dbg_ctx; } ;
struct qed_ll2_params {int rx_vlan_stripping; int /*<<< orphan*/  ll2_mac_address; scalar_t__ drop_ttl0_packets; scalar_t__ mtu; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_8__ {TYPE_3__* ll2; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* start ) (int /*<<< orphan*/ ,struct qed_ll2_params*) ;int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ IPV6_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  QEDI_LOG_INFO ; 
 scalar_t__ TCP_HDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_ll2_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qedi_ctx*) ; 
 TYPE_4__* qedi_ops ; 
 int /*<<< orphan*/  FUNC4 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct qed_ll2_params*) ; 

void FUNC7(struct qedi_ctx *qedi, u16 mtu)
{
	struct qed_ll2_params params;

	FUNC4(qedi);

	qedi_ops->ll2->stop(qedi->cdev);
	FUNC3(qedi);

	FUNC0(&qedi->dbg_ctx, QEDI_LOG_INFO, "old MTU %u, new MTU %u\n",
		  qedi->ll2_mtu, mtu);
	FUNC2(&params, 0, sizeof(params));
	qedi->ll2_mtu = mtu;
	params.mtu = qedi->ll2_mtu + IPV6_HDR_LEN + TCP_HDR_LEN;
	params.drop_ttl0_packets = 0;
	params.rx_vlan_stripping = 1;
	FUNC1(params.ll2_mac_address, qedi->dev_info.common.hw_mac);
	qedi_ops->ll2->start(qedi->cdev, &params);
}