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
struct recv_buf {struct adapter* adapter; int /*<<< orphan*/  recvbuf_lock; int /*<<< orphan*/  list; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct recv_buf *precvbuf, struct adapter *padapter)
{
	FUNC0(&precvbuf->list);
	FUNC1(&precvbuf->recvbuf_lock);

	precvbuf->adapter = padapter;
}