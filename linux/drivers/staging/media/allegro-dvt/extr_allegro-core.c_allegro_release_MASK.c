#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int /*<<< orphan*/  private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct allegro_channel {TYPE_1__ fh; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 struct allegro_channel* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct allegro_channel *channel = FUNC0(file->private_data);

	FUNC6(channel->fh.m2m_ctx);

	FUNC2(&channel->list);

	FUNC3(&channel->ctrl_handler);

	FUNC4(&channel->fh);
	FUNC5(&channel->fh);

	FUNC1(channel);

	return 0;
}