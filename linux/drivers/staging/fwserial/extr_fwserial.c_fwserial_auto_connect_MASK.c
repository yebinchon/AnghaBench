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
struct work_struct {int dummy; } ;
struct fwtty_peer {scalar_t__ connect_retries; int /*<<< orphan*/  connect; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECT_RETRY_DELAY ; 
 int EAGAIN ; 
 scalar_t__ MAX_CONNECT_RETRIES ; 
 int /*<<< orphan*/  connect ; 
 int FUNC0 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct work_struct*) ; 
 struct fwtty_peer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct fwtty_peer *peer = FUNC3(FUNC2(work), connect);
	int err;

	err = FUNC0(peer);
	if (err == -EAGAIN && ++peer->connect_retries < MAX_CONNECT_RETRIES)
		FUNC1(&peer->connect, CONNECT_RETRY_DELAY);
}