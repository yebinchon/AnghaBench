#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int config_index; int io_lines; TYPE_1__** resource; int /*<<< orphan*/  card_addr; } ;
struct ipw_dev {int is_v2_card; void* common_memory; void* attr_memory; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  start; scalar_t__ end; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int IO_DATA_PATH_WIDTH ; 
 int IO_DATA_PATH_WIDTH_AUTO ; 
 int /*<<< orphan*/  IPWIRELESS_PCCARD_NAME ; 
 int WIN_DATA_WIDTH_16 ; 
 int WIN_ENABLE ; 
 int WIN_MEMORY_TYPE_AM ; 
 int WIN_MEMORY_TYPE_CM ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int FUNC3 (struct pcmcia_device*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pcmcia_device*) ; 
 int FUNC5 (struct pcmcia_device*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct pcmcia_device *p_dev, void *priv_data)
{
	struct ipw_dev *ipw = priv_data;
	int ret;

	p_dev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
	p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_AUTO;

	/* 0x40 causes it to generate level mode interrupts. */
	/* 0x04 enables IREQ pin. */
	p_dev->config_index |= 0x44;
	p_dev->io_lines = 16;
	ret = FUNC4(p_dev);
	if (ret)
		return ret;

	if (!FUNC9(p_dev->resource[0]->start,
			    FUNC10(p_dev->resource[0]),
			    IPWIRELESS_PCCARD_NAME)) {
		ret = -EBUSY;
		goto exit;
	}

	p_dev->resource[2]->flags |=
		WIN_DATA_WIDTH_16 | WIN_MEMORY_TYPE_CM | WIN_ENABLE;

	ret = FUNC5(p_dev, p_dev->resource[2], 0);
	if (ret != 0)
		goto exit1;

	ret = FUNC3(p_dev, p_dev->resource[2], p_dev->card_addr);
	if (ret != 0)
		goto exit1;

	ipw->is_v2_card = FUNC10(p_dev->resource[2]) == 0x100;

	ipw->common_memory = FUNC0(p_dev->resource[2]->start,
				FUNC10(p_dev->resource[2]));
	if (!ipw->common_memory) {
		ret = -ENOMEM;
		goto exit1;
	}
	if (!FUNC8(p_dev->resource[2]->start,
				FUNC10(p_dev->resource[2]),
				IPWIRELESS_PCCARD_NAME)) {
		ret = -EBUSY;
		goto exit2;
	}

	p_dev->resource[3]->flags |= WIN_DATA_WIDTH_16 | WIN_MEMORY_TYPE_AM |
					WIN_ENABLE;
	p_dev->resource[3]->end = 0; /* this used to be 0x1000 */
	ret = FUNC5(p_dev, p_dev->resource[3], 0);
	if (ret != 0)
		goto exit3;

	ret = FUNC3(p_dev, p_dev->resource[3], 0);
	if (ret != 0)
		goto exit3;

	ipw->attr_memory = FUNC0(p_dev->resource[3]->start,
				FUNC10(p_dev->resource[3]));
	if (!ipw->attr_memory) {
		ret = -ENOMEM;
		goto exit3;
	}
	if (!FUNC8(p_dev->resource[3]->start,
				FUNC10(p_dev->resource[3]),
				IPWIRELESS_PCCARD_NAME)) {
		ret = -EBUSY;
		goto exit4;
	}

	return 0;

exit4:
	FUNC1(ipw->attr_memory);
exit3:
	FUNC6(p_dev->resource[2]->start,
			FUNC10(p_dev->resource[2]));
exit2:
	FUNC1(ipw->common_memory);
exit1:
	FUNC7(p_dev->resource[0]->start,
		       FUNC10(p_dev->resource[0]));
exit:
	FUNC2(p_dev);
	return ret;
}