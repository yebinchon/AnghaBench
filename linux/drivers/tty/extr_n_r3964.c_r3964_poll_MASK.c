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
struct tty_struct {int /*<<< orphan*/  read_wait; struct r3964_info* disc_data; } ;
struct r3964_message {int dummy; } ;
struct r3964_info {int /*<<< orphan*/  lock; } ;
struct r3964_client_info {struct r3964_message* first_msg; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  current ; 
 struct r3964_client_info* FUNC1 (struct r3964_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __poll_t FUNC6(struct tty_struct *tty, struct file *file,
			struct poll_table_struct *wait)
{
	struct r3964_info *pInfo = tty->disc_data;
	struct r3964_client_info *pClient;
	struct r3964_message *pMsg = NULL;
	unsigned long flags;
	__poll_t result = EPOLLOUT;

	FUNC0("POLL");

	pClient = FUNC1(pInfo, FUNC5(current));
	if (pClient) {
		FUNC2(file, &tty->read_wait, wait);
		FUNC3(&pInfo->lock, flags);
		pMsg = pClient->first_msg;
		FUNC4(&pInfo->lock, flags);
		if (pMsg)
			result |= EPOLLIN | EPOLLRDNORM;
	} else {
		result = -EINVAL;
	}
	return result;
}