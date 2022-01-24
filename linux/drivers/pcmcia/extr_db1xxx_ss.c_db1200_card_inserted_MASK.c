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
struct db1x_pcmcia_sock {int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCSR_SIGSTAT ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct db1x_pcmcia_sock *sock)
{
	unsigned short sigstat;

	sigstat = FUNC0(BCSR_SIGSTAT);
	return sigstat & 1 << (8 + 2 * sock->nr);
}