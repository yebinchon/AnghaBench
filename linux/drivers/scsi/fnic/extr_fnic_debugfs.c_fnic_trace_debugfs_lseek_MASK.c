#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_1__* private_data; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  buffer_len; } ;
typedef  TYPE_1__ fnic_dbgfs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC1(struct file *file,
					loff_t offset,
					int howto)
{
	fnic_dbgfs_t *fnic_dbg_prt = file->private_data;
	return FUNC0(file, offset, howto,
				fnic_dbg_prt->buffer_len);
}