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
struct soc_pcmcia_socket {int /*<<< orphan*/  res_skt; int /*<<< orphan*/  res_io; int /*<<< orphan*/  res_mem; int /*<<< orphan*/  res_attr; int /*<<< orphan*/ * virt_io; int /*<<< orphan*/  cpufreq_nb; TYPE_1__* ops; int /*<<< orphan*/  socket; int /*<<< orphan*/  poll_timer; } ;
struct TYPE_2__ {scalar_t__ frequency_change; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dead_socket ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct soc_pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct soc_pcmcia_socket*) ; 

void FUNC7(struct soc_pcmcia_socket *skt)
{
	FUNC1(&skt->poll_timer);

	FUNC3(&skt->socket);

#ifdef CONFIG_CPU_FREQ
	if (skt->ops->frequency_change)
		cpufreq_unregister_notifier(&skt->cpufreq_nb,
					    CPUFREQ_TRANSITION_NOTIFIER);
#endif

	FUNC6(skt);

	/* should not be required; violates some lowlevel drivers */
	FUNC5(skt, &dead_socket);

	FUNC2(skt->virt_io);
	skt->virt_io = NULL;
	FUNC4(&skt->res_attr);
	FUNC4(&skt->res_mem);
	FUNC4(&skt->res_io);
	FUNC4(&skt->res_skt);
}