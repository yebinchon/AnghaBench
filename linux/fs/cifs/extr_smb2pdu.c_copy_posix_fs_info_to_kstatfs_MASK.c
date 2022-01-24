#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kstatfs {void* f_ffree; void* f_files; void* f_bavail; void* f_bfree; void* f_blocks; int /*<<< orphan*/  f_bsize; } ;
struct TYPE_3__ {scalar_t__ TotalBlocks; scalar_t__ BlocksAvail; scalar_t__ UserBlocksAvail; scalar_t__ TotalFileNodes; scalar_t__ FreeFileNodes; int /*<<< orphan*/  BlockSize; } ;
typedef  TYPE_1__ FILE_SYSTEM_POSIX_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(FILE_SYSTEM_POSIX_INFO *response_data,
			struct kstatfs *kst)
{
	kst->f_bsize = FUNC1(response_data->BlockSize);
	kst->f_blocks = FUNC2(response_data->TotalBlocks);
	kst->f_bfree =  FUNC2(response_data->BlocksAvail);
	if (response_data->UserBlocksAvail == FUNC0(-1))
		kst->f_bavail = kst->f_bfree;
	else
		kst->f_bavail = FUNC2(response_data->UserBlocksAvail);
	if (response_data->TotalFileNodes != FUNC0(-1))
		kst->f_files = FUNC2(response_data->TotalFileNodes);
	if (response_data->FreeFileNodes != FUNC0(-1))
		kst->f_ffree = FUNC2(response_data->FreeFileNodes);

	return;
}