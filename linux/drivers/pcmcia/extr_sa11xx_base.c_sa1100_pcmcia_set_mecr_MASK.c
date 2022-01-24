#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct soc_pcmcia_timing {int /*<<< orphan*/  attr; int /*<<< orphan*/  mem; int /*<<< orphan*/  io; } ;
struct soc_pcmcia_socket {int /*<<< orphan*/  nr; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned int (* get_timing ) (struct soc_pcmcia_socket*,unsigned int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ MECR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct soc_pcmcia_socket*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct soc_pcmcia_socket*,struct soc_pcmcia_timing*) ; 
 unsigned int FUNC12 (struct soc_pcmcia_socket*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (struct soc_pcmcia_socket*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (struct soc_pcmcia_socket*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct soc_pcmcia_socket *skt, unsigned int cpu_clock)
{
	struct soc_pcmcia_timing timing;
	u32 mecr, old_mecr;
	unsigned long flags;
	unsigned int bs_io, bs_mem, bs_attr;

	FUNC11(skt, &timing);

	bs_io = skt->ops->get_timing(skt, cpu_clock, timing.io);
	bs_mem = skt->ops->get_timing(skt, cpu_clock, timing.mem);
	bs_attr = skt->ops->get_timing(skt, cpu_clock, timing.attr);

	FUNC10(flags);

	old_mecr = mecr = MECR;
	FUNC7(mecr, skt->nr, 0);
	FUNC3(mecr, skt->nr, bs_io);
	FUNC1(mecr, skt->nr, bs_attr);
	FUNC5(mecr, skt->nr, bs_mem);
	if (old_mecr != mecr)
		MECR = mecr;

	FUNC9(flags);

	FUNC8(skt, 2, "FAST %X  BSM %X  BSA %X  BSIO %X\n",
	      FUNC6(mecr, skt->nr),
	      FUNC4(mecr, skt->nr), FUNC0(mecr, skt->nr),
	      FUNC2(mecr, skt->nr));

	return 0;
}