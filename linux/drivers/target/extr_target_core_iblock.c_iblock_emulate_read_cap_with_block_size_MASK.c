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
typedef  int u32 ;
struct TYPE_2__ {int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct request_queue {int dummy; } ;
struct block_device {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int FUNC0 (struct block_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long long FUNC3(
	struct se_device *dev,
	struct block_device *bd,
	struct request_queue *q)
{
	unsigned long long blocks_long = (FUNC1(FUNC2(bd->bd_inode),
					FUNC0(bd)) - 1);
	u32 block_size = FUNC0(bd);

	if (block_size == dev->dev_attrib.block_size)
		return blocks_long;

	switch (block_size) {
	case 4096:
		switch (dev->dev_attrib.block_size) {
		case 2048:
			blocks_long <<= 1;
			break;
		case 1024:
			blocks_long <<= 2;
			break;
		case 512:
			blocks_long <<= 3;
		default:
			break;
		}
		break;
	case 2048:
		switch (dev->dev_attrib.block_size) {
		case 4096:
			blocks_long >>= 1;
			break;
		case 1024:
			blocks_long <<= 1;
			break;
		case 512:
			blocks_long <<= 2;
			break;
		default:
			break;
		}
		break;
	case 1024:
		switch (dev->dev_attrib.block_size) {
		case 4096:
			blocks_long >>= 2;
			break;
		case 2048:
			blocks_long >>= 1;
			break;
		case 512:
			blocks_long <<= 1;
			break;
		default:
			break;
		}
		break;
	case 512:
		switch (dev->dev_attrib.block_size) {
		case 4096:
			blocks_long >>= 3;
			break;
		case 2048:
			blocks_long >>= 2;
			break;
		case 1024:
			blocks_long >>= 1;
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}

	return blocks_long;
}