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
struct soc_pcmcia_socket {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct soc_pcmcia_socket*,unsigned long) ; 

__attribute__((used)) static int
FUNC2(struct soc_pcmcia_socket *skt)
{
	unsigned long clk = FUNC0(skt->clk);

	return FUNC1(skt, clk / 1000);
}