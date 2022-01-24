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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct goldfish_audio {scalar_t__ irq; int buffer_phys; scalar_t__ read_supported; scalar_t__ buffer_virt; scalar_t__ read_buffer; scalar_t__ write_buffer2; scalar_t__ write_buffer1; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_READ_SUPPORTED ; 
 int /*<<< orphan*/  AUDIO_SET_READ_BUFFER ; 
 int /*<<< orphan*/  AUDIO_SET_READ_BUFFER_HIGH ; 
 int /*<<< orphan*/  AUDIO_SET_WRITE_BUFFER_1 ; 
 int /*<<< orphan*/  AUDIO_SET_WRITE_BUFFER_1_HIGH ; 
 int /*<<< orphan*/  AUDIO_SET_WRITE_BUFFER_2 ; 
 int /*<<< orphan*/  AUDIO_SET_WRITE_BUFFER_2_HIGH ; 
 int /*<<< orphan*/  COMBINED_BUFFER_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int WRITE_BUFFER_SIZE ; 
 struct goldfish_audio* audio_data ; 
 scalar_t__ FUNC0 (struct goldfish_audio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct goldfish_audio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct goldfish_audio* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct goldfish_audio*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  goldfish_audio_device ; 
 int /*<<< orphan*/  goldfish_audio_interrupt ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct goldfish_audio*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int ret;
	struct resource *r;
	struct goldfish_audio *data;
	dma_addr_t buf_addr;

	data = FUNC4(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;
	FUNC12(&data->lock);
	FUNC7(&data->wait);
	FUNC11(pdev, data);

	r = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		FUNC2(&pdev->dev, "platform_get_resource failed\n");
		return -ENODEV;
	}
	data->reg_base = FUNC3(&pdev->dev, r->start, PAGE_SIZE);
	if (!data->reg_base)
		return -ENOMEM;

	data->irq = FUNC9(pdev, 0);
	if (data->irq < 0)
		return -ENODEV;
	data->buffer_virt = FUNC6(&pdev->dev,
						COMBINED_BUFFER_SIZE,
						&buf_addr, GFP_KERNEL);
	if (!data->buffer_virt) {
		FUNC2(&pdev->dev, "allocate buffer failed\n");
		return -ENOMEM;
	}
	data->buffer_phys = buf_addr;
	data->write_buffer1 = data->buffer_virt;
	data->write_buffer2 = data->buffer_virt + WRITE_BUFFER_SIZE;
	data->read_buffer = data->buffer_virt + 2 * WRITE_BUFFER_SIZE;

	ret = FUNC5(&pdev->dev, data->irq, goldfish_audio_interrupt,
			       IRQF_SHARED, pdev->name, data);
	if (ret) {
		FUNC2(&pdev->dev, "request_irq failed\n");
		return ret;
	}

	ret = FUNC8(&goldfish_audio_device);
	if (ret) {
		FUNC2(&pdev->dev,
			"misc_register returned %d in goldfish_audio_init\n",
								ret);
		return ret;
	}

	FUNC1(data, AUDIO_SET_WRITE_BUFFER_1,
		      AUDIO_SET_WRITE_BUFFER_1_HIGH, buf_addr);
	buf_addr += WRITE_BUFFER_SIZE;

	FUNC1(data, AUDIO_SET_WRITE_BUFFER_2,
		      AUDIO_SET_WRITE_BUFFER_2_HIGH, buf_addr);

	buf_addr += WRITE_BUFFER_SIZE;

	data->read_supported = FUNC0(data, AUDIO_READ_SUPPORTED);
	if (data->read_supported)
		FUNC1(data, AUDIO_SET_READ_BUFFER,
			      AUDIO_SET_READ_BUFFER_HIGH, buf_addr);

	audio_data = data;
	return 0;
}