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
struct iblock_dev {struct block_device* ibd_bd; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 struct iblock_dev* FUNC0 (struct se_device*) ; 
 int FUNC1 (struct block_device*) ; 
 int FUNC2 (struct block_device*) ; 
 unsigned int FUNC3 (int) ; 

__attribute__((used)) static unsigned int FUNC4(struct se_device *dev)
{
	struct iblock_dev *ib_dev = FUNC0(dev);
	struct block_device *bd = ib_dev->ibd_bd;
	int logs_per_phys = FUNC2(bd) / FUNC1(bd);

	return FUNC3(logs_per_phys);
}