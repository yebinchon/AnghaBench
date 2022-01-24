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
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct inode *inode, loff_t offset,
				      loff_t length)
{
	loff_t nearly = FUNC2(offset, PAGE_SIZE);
	if (offset < nearly) {
		loff_t size = nearly - offset;
		if (length < size)
			size = length;
		FUNC0(inode, offset, size);
		offset += size;
		length -= size;
	}
	if (length >= PAGE_SIZE) {
		loff_t size = FUNC1(length, PAGE_SIZE);
		FUNC3(inode, offset, offset + size - 1);
		offset += size;
		length -= size;
	}
	if (length)
		FUNC0(inode, offset, length);
}