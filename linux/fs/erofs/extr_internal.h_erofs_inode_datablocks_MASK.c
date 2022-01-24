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
struct inode {int /*<<< orphan*/  i_size; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EROFS_BLKSIZ ; 

__attribute__((used)) static inline unsigned long FUNC1(struct inode *inode)
{
	/* since i_size cannot be changed */
	return FUNC0(inode->i_size, EROFS_BLKSIZ);
}