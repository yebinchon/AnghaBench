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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct switchtec_ntb {int db_shift; int db_peer_shift; TYPE_2__* stdev; TYPE_1__* mmio_peer_dbmsg; } ;
struct ntb_dev {int /*<<< orphan*/  pdev; } ;
typedef  int resource_size_t ;
typedef  scalar_t__ phys_addr_t ;
struct TYPE_4__ {scalar_t__ mmio; } ;
struct TYPE_3__ {scalar_t__ odb; } ;

/* Variables and functions */
 int BITS_PER_LONG_LONG ; 
 int FUNC0 (int) ; 
 int EINVAL ; 
 struct switchtec_ntb* FUNC1 (struct ntb_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ntb_dev *ntb,
				      phys_addr_t *db_addr,
				      resource_size_t *db_size,
				      u64 *db_data,
				      int db_bit)
{
	struct switchtec_ntb *sndev = FUNC1(ntb);
	unsigned long offset;

	if (FUNC3(db_bit >= BITS_PER_LONG_LONG))
		return -EINVAL;

	offset = (unsigned long)sndev->mmio_peer_dbmsg->odb -
		(unsigned long)sndev->stdev->mmio;

	offset += sndev->db_shift / 8;

	if (db_addr)
		*db_addr = FUNC2(ntb->pdev, 0) + offset;
	if (db_size)
		*db_size = sizeof(u32);
	if (db_data)
		*db_data = FUNC0(db_bit) << sndev->db_peer_shift;

	return 0;
}