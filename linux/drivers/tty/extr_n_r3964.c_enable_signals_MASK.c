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
struct r3964_message {int sig_flags; scalar_t__ msg_count; int /*<<< orphan*/ * next_block_to_read; int /*<<< orphan*/ * last_msg; int /*<<< orphan*/ * first_msg; struct r3964_message* next; struct pid* pid; int /*<<< orphan*/  lock; } ;
struct r3964_info {struct r3964_message* firstClient; } ;
struct r3964_client_info {int sig_flags; scalar_t__ msg_count; int /*<<< orphan*/ * next_block_to_read; int /*<<< orphan*/ * last_msg; int /*<<< orphan*/ * first_msg; struct r3964_client_info* next; struct pid* pid; int /*<<< orphan*/  lock; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int R3964_SIG_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct r3964_message*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct r3964_message* FUNC2 (struct r3964_info*,struct pid*) ; 
 struct pid* FUNC3 (struct pid*) ; 
 int /*<<< orphan*/  FUNC4 (struct r3964_message*) ; 
 struct r3964_message* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pid*) ; 
 int /*<<< orphan*/  FUNC7 (struct pid*) ; 
 struct r3964_message* FUNC8 (struct r3964_info*,struct r3964_message*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct r3964_info *pInfo, struct pid *pid, int arg)
{
	struct r3964_client_info *pClient;
	struct r3964_client_info **ppClient;
	struct r3964_message *pMsg;

	if ((arg & R3964_SIG_ALL) == 0) {
		/* Remove client from client list */
		for (ppClient = &pInfo->firstClient; *ppClient;
		     ppClient = &(*ppClient)->next) {
			pClient = *ppClient;

			if (pClient->pid == pid) {
				FUNC1("removing client %d from client list",
					 FUNC6(pid));
				*ppClient = pClient->next;
				while (pClient->msg_count) {
					pMsg = FUNC8(pInfo, pClient);
					if (pMsg) {
						FUNC4(pMsg);
						FUNC0("enable_signals - msg "
							"kfree %p", pMsg);
					}
				}
				FUNC7(pClient->pid);
				FUNC4(pClient);
				FUNC0("enable_signals - kfree %p", pClient);
				return 0;
			}
		}
		return -EINVAL;
	} else {
		pClient = FUNC2(pInfo, pid);
		if (pClient) {
			/* update signal options */
			pClient->sig_flags = arg;
		} else {
			/* add client to client list */
			pClient = FUNC5(sizeof(struct r3964_client_info),
					GFP_KERNEL);
			FUNC0("enable_signals - kmalloc %p", pClient);
			if (pClient == NULL)
				return -ENOMEM;

			FUNC1("add client %d to client list", FUNC6(pid));
			FUNC9(&pClient->lock);
			pClient->sig_flags = arg;
			pClient->pid = FUNC3(pid);
			pClient->next = pInfo->firstClient;
			pClient->first_msg = NULL;
			pClient->last_msg = NULL;
			pClient->next_block_to_read = NULL;
			pClient->msg_count = 0;
			pInfo->firstClient = pClient;
		}
	}

	return 0;
}