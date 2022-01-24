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
struct btrfs_dio_private {int /*<<< orphan*/  bytes; int /*<<< orphan*/  logical_offset; int /*<<< orphan*/  inode; struct bio* dio_bio; } ;
struct bio {scalar_t__ bi_status; struct btrfs_dio_private* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_dio_private*) ; 

__attribute__((used)) static void FUNC4(struct bio *bio)
{
	struct btrfs_dio_private *dip = bio->bi_private;
	struct bio *dio_bio = dip->dio_bio;

	FUNC0(dip->inode, dip->logical_offset,
				     dip->bytes, !bio->bi_status);

	FUNC3(dip);

	dio_bio->bi_status = bio->bi_status;
	FUNC2(dio_bio);
	FUNC1(bio);
}