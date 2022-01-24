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
struct soc_pcmcia_timing {int io; int attr; int mem; } ;
struct soc_pcmcia_socket {int /*<<< orphan*/  nr; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned long MECR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct soc_pcmcia_socket*,struct soc_pcmcia_timing*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int) ; 

__attribute__((used)) static int
FUNC7(struct soc_pcmcia_socket *skt, char *buf)
{
	struct soc_pcmcia_timing timing;
	unsigned int clock = FUNC3(skt->clk) / 1000;
	unsigned long mecr = MECR;
	char *p = buf;

	FUNC5(skt, &timing);

	p+=FUNC6(p, "I/O      : %uns (%uns)\n", timing.io,
		   FUNC4(clock, FUNC1(mecr, skt->nr)));

	p+=FUNC6(p, "attribute: %uns (%uns)\n", timing.attr,
		   FUNC4(clock, FUNC0(mecr, skt->nr)));

	p+=FUNC6(p, "common   : %uns (%uns)\n", timing.mem,
		   FUNC4(clock, FUNC2(mecr, skt->nr)));

	return p - buf;
}