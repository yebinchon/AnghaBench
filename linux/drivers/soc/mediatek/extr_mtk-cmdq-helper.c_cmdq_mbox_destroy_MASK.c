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
struct cmdq_client {scalar_t__ timeout_ms; int /*<<< orphan*/  chan; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ CMDQ_NO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdq_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cmdq_client *client)
{
	if (client->timeout_ms != CMDQ_NO_TIMEOUT) {
		FUNC3(&client->lock);
		FUNC0(&client->timer);
		FUNC4(&client->lock);
	}
	FUNC2(client->chan);
	FUNC1(client);
}