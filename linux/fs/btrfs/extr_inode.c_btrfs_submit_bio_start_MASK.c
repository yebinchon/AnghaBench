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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC2(void *private_data, struct bio *bio,
				    u64 bio_offset)
{
	struct inode *inode = private_data;
	blk_status_t ret = 0;

	ret = FUNC1(inode, bio, 0, 0);
	FUNC0(ret); /* -ENOMEM */
	return 0;
}