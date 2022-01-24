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
struct vnt_private {scalar_t__ free_cmd_queue; int* cmd_queue; size_t cmd_enqueue_idx; int /*<<< orphan*/  cmd_running; } ;
typedef  enum vnt_cmd { ____Placeholder_vnt_cmd } vnt_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_Q_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*) ; 

int FUNC2(struct vnt_private *priv, enum vnt_cmd command)
{
	if (priv->free_cmd_queue == 0)
		return false;

	priv->cmd_queue[priv->cmd_enqueue_idx] = command;

	FUNC0(priv->cmd_enqueue_idx, CMD_Q_SIZE);
	priv->free_cmd_queue--;

	if (!priv->cmd_running)
		FUNC1(priv);

	return true;
}