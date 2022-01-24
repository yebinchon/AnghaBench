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
typedef  int /*<<< orphan*/  u32 ;
struct tb_nhi {scalar_t__ iobase; } ;
struct tb {int dummy; } ;
struct icm {int (* cio_reset ) (struct tb*) ;int /*<<< orphan*/  upstream_port; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ REG_FW_STS ; 
 int /*<<< orphan*/  REG_FW_STS_CIO_RESET_REQ ; 
 int /*<<< orphan*/  REG_FW_STS_ICM_EN_CPU ; 
 int /*<<< orphan*/  REG_FW_STS_ICM_EN_INVERT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct tb*) ; 
 struct icm* FUNC3 (struct tb*) ; 

__attribute__((used)) static int FUNC4(struct tb *tb, struct tb_nhi *nhi)
{
	struct icm *icm = FUNC3(tb);
	u32 val;

	if (!icm->upstream_port)
		return -ENODEV;

	/* Put ARC to wait for CIO reset event to happen */
	val = FUNC0(nhi->iobase + REG_FW_STS);
	val |= REG_FW_STS_CIO_RESET_REQ;
	FUNC1(val, nhi->iobase + REG_FW_STS);

	/* Re-start ARC */
	val = FUNC0(nhi->iobase + REG_FW_STS);
	val |= REG_FW_STS_ICM_EN_INVERT;
	val |= REG_FW_STS_ICM_EN_CPU;
	FUNC1(val, nhi->iobase + REG_FW_STS);

	/* Trigger CIO reset now */
	return icm->cio_reset(tb);
}