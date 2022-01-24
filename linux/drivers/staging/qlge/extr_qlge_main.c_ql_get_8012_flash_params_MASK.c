#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  mac_addr; } ;
struct TYPE_5__ {TYPE_1__ flash_params_8012; } ;
struct ql_adapter {TYPE_3__* ndev; TYPE_2__ flash; scalar_t__ port; } ;
struct flash_params_8012 {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SEM_FLASH_MASK ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int FUNC3 (struct ql_adapter*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ql_adapter*,int,char*) ; 

__attribute__((used)) static int FUNC7(struct ql_adapter *qdev)
{
	int i;
	int status;
	__le32 *p = (__le32 *)&qdev->flash;
	u32 offset = 0;
	u32 size = sizeof(struct flash_params_8012) / sizeof(u32);

	/* Second function's parameters follow the first
	 * function's.
	 */
	if (qdev->port)
		offset = size;

	if (FUNC4(qdev, SEM_FLASH_MASK))
		return -ETIMEDOUT;

	for (i = 0; i < size; i++, p++) {
		status = FUNC3(qdev, i+offset, p);
		if (status) {
			FUNC2(qdev, ifup, qdev->ndev,
				  "Error reading flash.\n");
			goto exit;
		}

	}

	status = FUNC6(qdev,
			sizeof(struct flash_params_8012) / sizeof(u16),
			"8012");
	if (status) {
		FUNC2(qdev, ifup, qdev->ndev, "Invalid flash.\n");
		status = -EINVAL;
		goto exit;
	}

	if (!FUNC0(qdev->flash.flash_params_8012.mac_addr)) {
		status = -EINVAL;
		goto exit;
	}

	FUNC1(qdev->ndev->dev_addr,
		qdev->flash.flash_params_8012.mac_addr,
		qdev->ndev->addr_len);

exit:
	FUNC5(qdev, SEM_FLASH_MASK);
	return status;
}