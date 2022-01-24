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
typedef  scalar_t__ u32 ;
struct vchiq_state {int dummy; } ;
struct vchiq_slot_zero {int* platform_data; } ;
struct vchiq_drvdata {int cache_line_size; struct rpi_firmware* fw; } ;
struct rpi_firmware {int dummy; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  int /*<<< orphan*/  channelbase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_IRQPOLL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_FRAGMENTS ; 
 int FUNC2 (int) ; 
 int PAGE_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPI_FIRMWARE_VCHIQ_INIT ; 
 int TOTAL_SLOTS ; 
 size_t VCHIQ_PLATFORM_FRAGMENTS_COUNT_IDX ; 
 size_t VCHIQ_PLATFORM_FRAGMENTS_OFFSET_IDX ; 
 int VCHIQ_SLOT_SIZE ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vchiq_state*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct device*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int g_cache_line_size ; 
 struct device* g_dev ; 
 char* g_fragments_base ; 
 int g_fragments_size ; 
 char* g_free_fragments ; 
 int /*<<< orphan*/  g_free_fragments_sema ; 
 int /*<<< orphan*/  g_regs ; 
 struct vchiq_drvdata* FUNC10 (struct platform_device*) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct rpi_firmware*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vchiq_arm_log_level ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  vchiq_doorbell_irq ; 
 struct vchiq_slot_zero* FUNC16 (void*,int) ; 
 scalar_t__ FUNC17 (struct vchiq_state*,struct vchiq_slot_zero*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,struct vchiq_slot_zero*,scalar_t__*) ; 

int FUNC19(struct platform_device *pdev, struct vchiq_state *state)
{
	struct device *dev = &pdev->dev;
	struct vchiq_drvdata *drvdata = FUNC10(pdev);
	struct rpi_firmware *fw = drvdata->fw;
	struct vchiq_slot_zero *vchiq_slot_zero;
	struct resource *res;
	void *slot_mem;
	dma_addr_t slot_phys;
	u32 channelbase;
	int slot_mem_size, frag_mem_size;
	int err, irq, i;

	/*
	 * VCHI messages between the CPU and firmware use
	 * 32-bit bus addresses.
	 */
	err = FUNC8(dev, FUNC0(32));

	if (err < 0)
		return err;

	g_cache_line_size = drvdata->cache_line_size;
	g_fragments_size = 2 * g_cache_line_size;

	/* Allocate space for the channels in coherent memory */
	slot_mem_size = FUNC2(TOTAL_SLOTS * VCHIQ_SLOT_SIZE);
	frag_mem_size = FUNC2(g_fragments_size * MAX_FRAGMENTS);

	slot_mem = FUNC9(dev, slot_mem_size + frag_mem_size,
				       &slot_phys, GFP_KERNEL);
	if (!slot_mem) {
		FUNC5(dev, "could not allocate DMA memory\n");
		return -ENOMEM;
	}

	FUNC4(((unsigned long)slot_mem & (PAGE_SIZE - 1)) != 0);

	vchiq_slot_zero = FUNC16(slot_mem, slot_mem_size);
	if (!vchiq_slot_zero)
		return -EINVAL;

	vchiq_slot_zero->platform_data[VCHIQ_PLATFORM_FRAGMENTS_OFFSET_IDX] =
		(int)slot_phys + slot_mem_size;
	vchiq_slot_zero->platform_data[VCHIQ_PLATFORM_FRAGMENTS_COUNT_IDX] =
		MAX_FRAGMENTS;

	g_fragments_base = (char *)slot_mem + slot_mem_size;

	g_free_fragments = g_fragments_base;
	for (i = 0; i < (MAX_FRAGMENTS - 1); i++) {
		*(char **)&g_fragments_base[i*g_fragments_size] =
			&g_fragments_base[(i + 1)*g_fragments_size];
	}
	*(char **)&g_fragments_base[i * g_fragments_size] = NULL;
	FUNC14(&g_free_fragments_sema, MAX_FRAGMENTS);

	if (FUNC17(state, vchiq_slot_zero) != VCHIQ_SUCCESS)
		return -EINVAL;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	g_regs = FUNC6(&pdev->dev, res);
	if (FUNC1(g_regs))
		return FUNC3(g_regs);

	irq = FUNC11(pdev, 0);
	if (irq <= 0)
		return irq;

	err = FUNC7(dev, irq, vchiq_doorbell_irq, IRQF_IRQPOLL,
			       "VCHIQ doorbell", state);
	if (err) {
		FUNC5(dev, "failed to register irq=%d\n", irq);
		return err;
	}

	/* Send the base address of the slots to VideoCore */
	channelbase = slot_phys;
	err = FUNC13(fw, RPI_FIRMWARE_VCHIQ_INIT,
				    &channelbase, sizeof(channelbase));
	if (err || channelbase) {
		FUNC5(dev, "failed to set channelbase\n");
		return err ? : -ENXIO;
	}

	g_dev = dev;
	FUNC18(vchiq_arm_log_level,
		"vchiq_init - done (slots %pK, phys %pad)",
		vchiq_slot_zero, &slot_phys);

	FUNC15();

	return 0;
}