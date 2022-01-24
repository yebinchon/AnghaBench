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
typedef  int /*<<< orphan*/  val ;
struct wsm_rx_filter {scalar_t__ probeResponder; scalar_t__ fcs; scalar_t__ bssid; scalar_t__ promiscuous; } ;
struct cw1200_common {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WSM_MIB_ID_RX_FILTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(struct cw1200_common *priv,
				    const struct wsm_rx_filter *arg)
{
	__le32 val = 0;
	if (arg->promiscuous)
		val |= FUNC1(FUNC0(0));
	if (arg->bssid)
		val |= FUNC1(FUNC0(1));
	if (arg->fcs)
		val |= FUNC1(FUNC0(2));
	if (arg->probeResponder)
		val |= FUNC1(FUNC0(3));
	return FUNC2(priv, WSM_MIB_ID_RX_FILTER, &val, sizeof(val));
}