#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smb2_file_all_info {int /*<<< orphan*/  AlignmentRequirement; int /*<<< orphan*/  Mode; scalar_t__ CurrentByteOffset; } ;
struct TYPE_4__ {scalar_t__ IndexNumber1; int /*<<< orphan*/  AlignmentRequirement; int /*<<< orphan*/  Mode; scalar_t__ CurrentByteOffset; } ;
typedef  TYPE_1__ FILE_ALL_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct smb2_file_all_info*,size_t) ; 

void
FUNC1(FILE_ALL_INFO *dst, struct smb2_file_all_info *src)
{
	FUNC0(dst, src, (size_t)(&src->CurrentByteOffset) - (size_t)src);
	dst->CurrentByteOffset = src->CurrentByteOffset;
	dst->Mode = src->Mode;
	dst->AlignmentRequirement = src->AlignmentRequirement;
	dst->IndexNumber1 = 0; /* we don't use it */
}