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
struct vsoc_device_region {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct vsoc_device_region* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
inline struct vsoc_device_region *FUNC2(struct file *inode)
{
	return FUNC1(FUNC0(inode));
}