#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  start; } ;
struct TYPE_17__ {int /*<<< orphan*/  parent; } ;
struct TYPE_16__ {int features; unsigned long io_offset; TYPE_9__ dev; int /*<<< orphan*/  map_size; scalar_t__ irq_mask; int /*<<< orphan*/ * resource_ops; int /*<<< orphan*/ * ops; } ;
struct TYPE_14__ {scalar_t__ expires; } ;
struct TYPE_12__ {int /*<<< orphan*/  notifier_call; } ;
struct soc_pcmcia_socket {TYPE_3__ res_skt; TYPE_3__ res_io; TYPE_3__ res_mem; TYPE_3__ res_attr; int /*<<< orphan*/ * virt_io; TYPE_6__ socket; TYPE_2__ poll_timer; TYPE_11__ cpufreq_nb; TYPE_1__* ops; int /*<<< orphan*/  status; int /*<<< orphan*/  cs_state; } ;
struct TYPE_13__ {scalar_t__ frequency_change; int /*<<< orphan*/  (* set_timing ) (struct soc_pcmcia_socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ SOC_PCMCIA_POLL_PERIOD ; 
 int SS_CAP_PCCARD ; 
 int SS_CAP_STATIC_MAP ; 
 int FUNC0 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dead_socket ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  dev_attr_status ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 TYPE_3__ iomem_resource ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  pccard_static_ops ; 
 int FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  soc_common_pcmcia_cpufreq_nb ; 
 int /*<<< orphan*/  soc_common_pcmcia_operations ; 
 int /*<<< orphan*/  soc_common_pcmcia_poll_event ; 
 int /*<<< orphan*/  FUNC10 (struct soc_pcmcia_socket*) ; 
 int FUNC11 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC12 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC13 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15(struct soc_pcmcia_socket *skt)
{
	int ret;

	skt->cs_state = dead_socket;

	FUNC14(&skt->poll_timer, soc_common_pcmcia_poll_event, 0);
	skt->poll_timer.expires = jiffies + SOC_PCMCIA_POLL_PERIOD;

	ret = FUNC9(&iomem_resource, &skt->res_skt);
	if (ret)
		goto out_err_1;

	ret = FUNC9(&skt->res_skt, &skt->res_io);
	if (ret)
		goto out_err_2;

	ret = FUNC9(&skt->res_skt, &skt->res_mem);
	if (ret)
		goto out_err_3;

	ret = FUNC9(&skt->res_skt, &skt->res_attr);
	if (ret)
		goto out_err_4;

	skt->virt_io = FUNC4(skt->res_io.start, 0x10000);
	if (skt->virt_io == NULL) {
		ret = -ENOMEM;
		goto out_err_5;
	}

	/*
	 * We initialize default socket timing here, because
	 * we are not guaranteed to see a SetIOMap operation at
	 * runtime.
	 */
	skt->ops->set_timing(skt);

	ret = FUNC11(skt);
	if (ret)
		goto out_err_6;

	skt->socket.ops = &soc_common_pcmcia_operations;
	skt->socket.features = SS_CAP_STATIC_MAP|SS_CAP_PCCARD;
	skt->socket.resource_ops = &pccard_static_ops;
	skt->socket.irq_mask = 0;
	skt->socket.map_size = PAGE_SIZE;
	skt->socket.io_offset = (unsigned long)skt->virt_io;

	skt->status = FUNC10(skt);

#ifdef CONFIG_CPU_FREQ
	if (skt->ops->frequency_change) {
		skt->cpufreq_nb.notifier_call = soc_common_pcmcia_cpufreq_nb;

		ret = cpufreq_register_notifier(&skt->cpufreq_nb,
						CPUFREQ_TRANSITION_NOTIFIER);
		if (ret < 0)
			dev_err(skt->socket.dev.parent,
				"unable to register CPU frequency change notifier for PCMCIA (%d)\n",
				ret);
	}
#endif

	ret = FUNC6(&skt->socket);
	if (ret)
		goto out_err_7;

	ret = FUNC3(&skt->socket.dev, &dev_attr_status);
	if (ret)
		goto out_err_8;

	return ret;

 out_err_8:
	FUNC1(&skt->poll_timer);
	FUNC7(&skt->socket);

 out_err_7:
	FUNC12(skt);
 out_err_6:
	FUNC5(skt->virt_io);
 out_err_5:
	FUNC8(&skt->res_attr);
 out_err_4:
	FUNC8(&skt->res_mem);
 out_err_3:
	FUNC8(&skt->res_io);
 out_err_2:
	FUNC8(&skt->res_skt);
 out_err_1:

	return ret;
}