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
struct db1x_pcmcia_sock {int stschg_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct db1x_pcmcia_sock *sock, int en)
{
	if (sock->stschg_irq != -1) {
		if (en)
			FUNC1(sock->stschg_irq);
		else
			FUNC0(sock->stschg_irq);
	}
}