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
typedef  int /*<<< orphan*/  uint32_t ;
struct csio_mb {int dummy; } ;
struct csio_iq_params {int dummy; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,struct csio_mb*,void*,int /*<<< orphan*/ ,struct csio_iq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,struct csio_mb*,void*,int /*<<< orphan*/ ,int,struct csio_iq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ; 

void
FUNC2(struct csio_hw *hw, struct csio_mb *mbp, void *priv,
		       uint32_t mb_tmo, struct csio_iq_params *iq_params,
		       void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
	FUNC0(hw, mbp, priv, mb_tmo, iq_params, cbfn);
	FUNC1(hw, mbp, priv, mb_tmo, true, iq_params, cbfn);
}