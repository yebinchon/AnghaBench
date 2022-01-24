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
struct mon_private {size_t write_index; int /*<<< orphan*/  read_ready; TYPE_1__** msg_array; int /*<<< orphan*/  msglim_count; } ;
struct iucv_path {struct mon_private* private; } ;
struct iucv_message {int dummy; } ;
struct TYPE_2__ {int msglim_reached; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int MON_MSGLIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct iucv_message*,int) ; 
 int /*<<< orphan*/  mon_read_wait_queue ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iucv_path *path,
				     struct iucv_message *msg)
{
	struct mon_private *monpriv = path->private;

	FUNC2(&monpriv->msg_array[monpriv->write_index]->msg,
	       msg, sizeof(*msg));
	if (FUNC1(&monpriv->msglim_count) == MON_MSGLIM) {
		FUNC3("The read queue for monitor data is full\n");
		monpriv->msg_array[monpriv->write_index]->msglim_reached = 1;
	}
	monpriv->write_index = (monpriv->write_index + 1) % MON_MSGLIM;
	FUNC0(&monpriv->read_ready);
	FUNC4(&mon_read_wait_queue);
}