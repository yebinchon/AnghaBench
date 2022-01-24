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
struct soc_pcmcia_timing {int /*<<< orphan*/  io; int /*<<< orphan*/  attr; int /*<<< orphan*/  mem; } ;
struct soc_pcmcia_socket {int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_pcmcia_socket*,struct soc_pcmcia_timing*) ; 

__attribute__((used)) static int FUNC4(struct soc_pcmcia_socket *skt, unsigned int clk)
{
	struct soc_pcmcia_timing timing;
	int sock = skt->nr;

	FUNC3(skt, &timing);

	FUNC2(sock, timing.mem, clk);
	FUNC0(sock, timing.attr, clk);
	FUNC1(sock, timing.io, clk);

	return 0;
}