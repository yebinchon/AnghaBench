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
struct TYPE_2__ {scalar_t__ max_fast_reg_page_list_len; } ;
struct ib_device {TYPE_1__ attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_RDMA_MAX_SEGMENTS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC1(struct ib_device *ibdev)
{
	return FUNC0(u32, NVME_RDMA_MAX_SEGMENTS,
		     ibdev->attrs.max_fast_reg_page_list_len - 1);
}