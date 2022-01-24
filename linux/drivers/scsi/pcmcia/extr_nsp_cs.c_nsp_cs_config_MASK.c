#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int config_flags; int /*<<< orphan*/  irq; TYPE_3__** resource; TYPE_1__* priv; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {struct Scsi_Host* host; } ;
typedef  TYPE_1__ scsi_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  IrqNumber; int /*<<< orphan*/  NumAddress; int /*<<< orphan*/  BaseAddress; } ;
typedef  TYPE_2__ nsp_hw_data ;
struct TYPE_9__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int CONF_AUTO_AUDIO ; 
 int CONF_AUTO_CHECK_VCC ; 
 int CONF_AUTO_SET_IO ; 
 int CONF_AUTO_SET_IOMEM ; 
 int CONF_AUTO_SET_VPP ; 
 int CONF_ENABLE_IRQ ; 
 int ENODEV ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  NSP_DEBUG_INIT ; 
 scalar_t__ free_ports ; 
 int /*<<< orphan*/  nsp_cs_config_check ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 TYPE_2__ nsp_data_base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsp_driver_template ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  nspintr ; 
 int FUNC4 (struct pcmcia_device*) ; 
 int FUNC5 (struct pcmcia_device*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC6 (struct pcmcia_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC11(struct pcmcia_device *link)
{
	int		  ret;
	scsi_info_t	 *info	 = link->priv;
	struct Scsi_Host *host;
	nsp_hw_data      *data = &nsp_data_base;

	FUNC1(NSP_DEBUG_INIT, "in");

	link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_CHECK_VCC |
		CONF_AUTO_SET_VPP | CONF_AUTO_AUDIO | CONF_AUTO_SET_IOMEM |
		CONF_AUTO_SET_IO;

	ret = FUNC5(link, nsp_cs_config_check, data);
	if (ret)
		goto cs_failed;

	if (FUNC6(link, nspintr))
		goto cs_failed;

	ret = FUNC4(link);
	if (ret)
		goto cs_failed;

	if (free_ports) {
		if (link->resource[0]) {
			FUNC7(link->resource[0]->start,
					FUNC8(link->resource[0]));
		}
		if (link->resource[1]) {
			FUNC7(link->resource[1]->start,
					FUNC8(link->resource[1]));
		}
	}

	/* Set port and IRQ */
	data->BaseAddress = link->resource[0]->start;
	data->NumAddress  = FUNC8(link->resource[0]);
	data->IrqNumber   = link->irq;

	FUNC1(NSP_DEBUG_INIT, "I/O[0x%x+0x%x] IRQ %d",
		data->BaseAddress, data->NumAddress, data->IrqNumber);

	if(FUNC3(data) == FALSE) {
		goto cs_failed;
	}

	host = FUNC2(&nsp_driver_template);

	if (host == NULL) {
		FUNC1(NSP_DEBUG_INIT, "detect failed");
		goto cs_failed;
	}


	ret = FUNC9 (host, NULL);
	if (ret)
		goto cs_failed;

	FUNC10(host);

	info->host = host;

	return 0;

 cs_failed:
	FUNC1(NSP_DEBUG_INIT, "config fail");
	FUNC0(link);

	return -ENODEV;
}