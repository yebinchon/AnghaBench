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
struct stats_debug_info {int /*<<< orphan*/  debug_buffer; } ;
struct inode {int dummy; } ;
struct file {struct stats_debug_info* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stats_debug_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode,
					struct file *file)
{
	struct stats_debug_info *debug = file->private_data;
	FUNC1(debug->debug_buffer);
	FUNC0(debug);
	return 0;
}