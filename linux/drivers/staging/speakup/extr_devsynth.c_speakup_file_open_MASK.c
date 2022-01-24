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
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  dev_opened ; 
 int /*<<< orphan*/  synth ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(struct inode *ip, struct file *fp)
{
	if (!synth)
		return -ENODEV;
	if (FUNC0(&dev_opened, 1))
		return -EBUSY;
	return 0;
}