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

/* Variables and functions */
 int FUNC0 (struct inode*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *src, u64 loff, u64 len,
				   struct inode *dst, u64 dst_loff)
{
	int ret;

	/*
	 * Lock destination range to serialize with concurrent readpages() and
	 * source range to serialize with relocation.
	 */
	FUNC1(src, loff, dst, dst_loff, len);
	ret = FUNC0(src, dst, loff, len, len, dst_loff, 1);
	FUNC2(src, loff, dst, dst_loff, len);

	return ret;
}