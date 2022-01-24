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
struct stats_debug_info {int buf_size; int /*<<< orphan*/  buffer_len; scalar_t__ debug_buffer; } ;
struct inode {struct fnic* i_private; } ;
struct fnic_stats {int dummy; } ;
struct fnic {struct fnic_stats fnic_stats; } ;
struct file {struct stats_debug_info* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct stats_debug_info*,struct fnic_stats*) ; 
 int /*<<< orphan*/  FUNC1 (struct stats_debug_info*) ; 
 struct stats_debug_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
					struct file *file)
{
	struct fnic *fnic = inode->i_private;
	struct fnic_stats *fnic_stats = &fnic->fnic_stats;
	struct stats_debug_info *debug;
	int buf_size = 2 * PAGE_SIZE;

	debug = FUNC2(sizeof(struct stats_debug_info), GFP_KERNEL);
	if (!debug)
		return -ENOMEM;

	debug->debug_buffer = FUNC4(buf_size);
	if (!debug->debug_buffer) {
		FUNC1(debug);
		return -ENOMEM;
	}

	debug->buf_size = buf_size;
	FUNC3((void *)debug->debug_buffer, 0, buf_size);
	debug->buffer_len = FUNC0(debug, fnic_stats);

	file->private_data = debug;

	return 0;
}