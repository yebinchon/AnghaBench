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
struct inode {int /*<<< orphan*/  i_ino; } ;
typedef  int /*<<< orphan*/  erofs_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, void *opaque)
{
	const erofs_nid_t nid = *(erofs_nid_t *)opaque;

	inode->i_ino = FUNC0(nid);
	return 0;
}