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
struct gb_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/  mode_name; int /*<<< orphan*/  color_name; int /*<<< orphan*/  attr_groups; int /*<<< orphan*/  attr_group; int /*<<< orphan*/  attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct gb_channel *channel)
{
	FUNC0(channel->attrs);
	FUNC0(channel->attr_group);
	FUNC0(channel->attr_groups);
	FUNC0(channel->color_name);
	FUNC0(channel->mode_name);
	FUNC1(&channel->lock);
}