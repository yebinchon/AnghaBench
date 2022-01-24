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
struct list_head {int dummy; } ;
struct compressed_bio {int compress_type; } ;
struct TYPE_2__ {int (* decompress_bio ) (struct list_head*,struct compressed_bio*) ;} ;

/* Variables and functions */
 TYPE_1__** btrfs_compress_op ; 
 struct list_head* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct list_head*) ; 
 int FUNC2 (struct list_head*,struct compressed_bio*) ; 

__attribute__((used)) static int FUNC3(struct compressed_bio *cb)
{
	struct list_head *workspace;
	int ret;
	int type = cb->compress_type;

	workspace = FUNC0(type, 0);
	ret = btrfs_compress_op[type]->decompress_bio(workspace, cb);
	FUNC1(type, workspace);

	return ret;
}