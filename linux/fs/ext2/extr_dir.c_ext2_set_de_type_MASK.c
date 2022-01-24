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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {scalar_t__ file_type; } ;
typedef  TYPE_1__ ext2_dirent ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_FEATURE_INCOMPAT_FILETYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(ext2_dirent *de, struct inode *inode)
{
	if (FUNC0(inode->i_sb, EXT2_FEATURE_INCOMPAT_FILETYPE))
		de->file_type = FUNC1(inode->i_mode);
	else
		de->file_type = 0;
}