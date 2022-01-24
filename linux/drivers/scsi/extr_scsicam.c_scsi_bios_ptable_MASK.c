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
struct block_device {struct block_device* bd_contains; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

unsigned char *FUNC5(struct block_device *dev)
{
	unsigned char *res = FUNC1(66, GFP_KERNEL);
	if (res) {
		struct block_device *bdev = dev->bd_contains;
		Sector sect;
		void *data = FUNC4(bdev, 0, &sect);
		if (data) {
			FUNC2(res, data + 0x1be, 66);
			FUNC3(sect);
		} else {
			FUNC0(res);
			res = NULL;
		}
	}
	return res;
}