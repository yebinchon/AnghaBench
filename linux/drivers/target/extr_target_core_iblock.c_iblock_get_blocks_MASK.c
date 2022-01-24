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
struct se_device {int dummy; } ;
struct request_queue {int dummy; } ;
struct iblock_dev {struct block_device* ibd_bd; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct iblock_dev* FUNC0 (struct se_device*) ; 
 struct request_queue* FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_device*,struct block_device*,struct request_queue*) ; 

__attribute__((used)) static sector_t FUNC3(struct se_device *dev)
{
	struct iblock_dev *ib_dev = FUNC0(dev);
	struct block_device *bd = ib_dev->ibd_bd;
	struct request_queue *q = FUNC1(bd);

	return FUNC2(dev, bd, q);
}