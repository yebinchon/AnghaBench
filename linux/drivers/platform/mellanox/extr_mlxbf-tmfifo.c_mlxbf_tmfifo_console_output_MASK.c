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
typedef  scalar_t__ u32 ;
struct vring_desc {int dummy; } ;
struct mlxbf_tmfifo_vring {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct mlxbf_tmfifo_vdev {TYPE_1__ tx_buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MLXBF_TMFIFO_CON_TX_BUF_RSV_SIZE ; 
 int /*<<< orphan*/  MLXBF_TMFIFO_CON_TX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct mlxbf_tmfifo_vdev*,struct mlxbf_tmfifo_vring*,struct vring_desc*) ; 
 struct vring_desc* FUNC2 (struct mlxbf_tmfifo_vring*) ; 
 scalar_t__ FUNC3 (struct mlxbf_tmfifo_vring*,struct vring_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxbf_tmfifo_vring*,struct vring_desc*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mlxbf_tmfifo_vdev *cons,
					struct mlxbf_tmfifo_vring *vring)
{
	struct vring_desc *desc;
	u32 len, avail;

	desc = FUNC2(vring);
	while (desc) {
		/* Release the packet if not enough space. */
		len = FUNC3(vring, desc);
		avail = FUNC0(cons->tx_buf.head, cons->tx_buf.tail,
				   MLXBF_TMFIFO_CON_TX_BUF_SIZE);
		if (len + MLXBF_TMFIFO_CON_TX_BUF_RSV_SIZE > avail) {
			FUNC4(vring, desc, len);
			break;
		}

		FUNC1(cons, vring, desc);
		FUNC4(vring, desc, len);
		desc = FUNC2(vring);
	}
}