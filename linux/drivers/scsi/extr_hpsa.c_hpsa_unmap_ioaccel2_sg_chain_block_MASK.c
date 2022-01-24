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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ioaccel2_sg_element {int /*<<< orphan*/  length; int /*<<< orphan*/  address; } ;
struct io_accel2_cmd {struct ioaccel2_sg_element* sg; } ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ctlr_info *h,
	struct io_accel2_cmd *cp)
{
	struct ioaccel2_sg_element *chain_sg;
	u64 temp64;
	u32 chain_size;

	chain_sg = cp->sg;
	temp64 = FUNC2(chain_sg->address);
	chain_size = FUNC1(cp->sg[0].length);
	FUNC0(&h->pdev->dev, temp64, chain_size, DMA_TO_DEVICE);
}