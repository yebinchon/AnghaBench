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
struct smb2_sync_hdr {int /*<<< orphan*/  Command; int /*<<< orphan*/  SessionId; int /*<<< orphan*/  TreeId; int /*<<< orphan*/  MessageId; int /*<<< orphan*/  CreditCharge; } ;
struct mid_q_entry {unsigned int credits; int /*<<< orphan*/  mid; int /*<<< orphan*/  mid_state; TYPE_1__* callback_data; int /*<<< orphan*/  callback; struct TCP_Server_Info* server; int /*<<< orphan*/  when_alloc; int /*<<< orphan*/  command; int /*<<< orphan*/  pid; int /*<<< orphan*/  refcount; } ;
struct TCP_Server_Info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  MID_REQUEST_ALLOCATED ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cifs_mid_poolp ; 
 int /*<<< orphan*/  cifs_wake_up_task ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mid_q_entry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mid_q_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  midCount ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mid_q_entry *
FUNC8(const struct smb2_sync_hdr *shdr,
		     struct TCP_Server_Info *server)
{
	struct mid_q_entry *temp;
	unsigned int credits = FUNC3(shdr->CreditCharge);

	if (server == NULL) {
		FUNC1(VFS, "Null TCP session in smb2_mid_entry_alloc\n");
		return NULL;
	}

	temp = FUNC5(cifs_mid_poolp, GFP_NOFS);
	FUNC6(temp, 0, sizeof(struct mid_q_entry));
	FUNC2(&temp->refcount);
	temp->mid = FUNC4(shdr->MessageId);
	temp->credits = credits > 0 ? credits : 1;
	temp->pid = current->pid;
	temp->command = shdr->Command; /* Always LE */
	temp->when_alloc = jiffies;
	temp->server = server;

	/*
	 * The default is for the mid to be synchronous, so the
	 * default callback just wakes up the current task.
	 */
	temp->callback = cifs_wake_up_task;
	temp->callback_data = current;

	FUNC0(&midCount);
	temp->mid_state = MID_REQUEST_ALLOCATED;
	FUNC7(shdr->TreeId, shdr->SessionId,
		FUNC3(shdr->Command), temp->mid);
	return temp;
}