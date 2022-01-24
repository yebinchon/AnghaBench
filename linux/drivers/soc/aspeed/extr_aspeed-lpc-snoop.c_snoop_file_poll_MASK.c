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
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
struct aspeed_lpc_snoop_channel {int /*<<< orphan*/  fifo; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 struct aspeed_lpc_snoop_channel* FUNC2 (struct file*) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *file,
				    struct poll_table_struct *pt)
{
	struct aspeed_lpc_snoop_channel *chan = FUNC2(file);

	FUNC1(file, &chan->wq, pt);
	return !FUNC0(&chan->fifo) ? POLLIN : 0;
}