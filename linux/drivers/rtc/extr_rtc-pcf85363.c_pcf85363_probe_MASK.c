#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pcf85x63_config {int num_nvram; int /*<<< orphan*/  regmap; } ;
struct pcf85363 {TYPE_1__* rtc; TYPE_1__* regmap; } ;
struct nvmem_config {char* name; int word_size; int stride; int size; struct pcf85363* priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_FLAGS ; 
 int /*<<< orphan*/  CTRL_PIN_IO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
#define  NVRAM_SIZE 132 
 int /*<<< orphan*/  PIN_IO_INTAPM ; 
 int /*<<< orphan*/  PIN_IO_INTA_OUT ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct pcf85363* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct i2c_client*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct pcf85363*) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
#define  pcf85363_nvram_read 131 
#define  pcf85363_nvram_write 130 
 int /*<<< orphan*/  pcf85363_rtc_handle_irq ; 
#define  pcf85x63_nvram_read 129 
#define  pcf85x63_nvram_write 128 
 struct pcf85x63_config pcf_85363_config ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct nvmem_config*) ; 
 int /*<<< orphan*/  rtc_ops ; 
 int /*<<< orphan*/  rtc_ops_alarm ; 
 int FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct pcf85363 *pcf85363;
	const struct pcf85x63_config *config = &pcf_85363_config;
	const void *data = FUNC9(&client->dev);
	static struct nvmem_config nvmem_cfg[] = {
		{
			.name = "pcf85x63-",
			.word_size = 1,
			.stride = 1,
			.size = 1,
			.reg_read = pcf85x63_nvram_read,
			.reg_write = pcf85x63_nvram_write,
		}, {
			.name = "pcf85363-",
			.word_size = 1,
			.stride = 1,
			.size = NVRAM_SIZE,
			.reg_read = pcf85363_nvram_read,
			.reg_write = pcf85363_nvram_write,
		},
	};
	int ret, i;

	if (data)
		config = data;

	pcf85363 = FUNC4(&client->dev, sizeof(struct pcf85363),
				GFP_KERNEL);
	if (!pcf85363)
		return -ENOMEM;

	pcf85363->regmap = FUNC5(client, &config->regmap);
	if (FUNC0(pcf85363->regmap)) {
		FUNC2(&client->dev, "regmap allocation failed\n");
		return FUNC1(pcf85363->regmap);
	}

	FUNC8(client, pcf85363);

	pcf85363->rtc = FUNC7(&client->dev);
	if (FUNC0(pcf85363->rtc))
		return FUNC1(pcf85363->rtc);

	pcf85363->rtc->ops = &rtc_ops;
	pcf85363->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	pcf85363->rtc->range_max = RTC_TIMESTAMP_END_2099;

	if (client->irq > 0) {
		FUNC11(pcf85363->regmap, CTRL_FLAGS, 0);
		FUNC10(pcf85363->regmap, CTRL_PIN_IO,
				   PIN_IO_INTA_OUT, PIN_IO_INTAPM);
		ret = FUNC6(&client->dev, client->irq,
						NULL, pcf85363_rtc_handle_irq,
						IRQF_TRIGGER_LOW | IRQF_ONESHOT,
						"pcf85363", client);
		if (ret)
			FUNC3(&client->dev, "unable to request IRQ, alarms disabled\n");
		else
			pcf85363->rtc->ops = &rtc_ops_alarm;
	}

	ret = FUNC13(pcf85363->rtc);

	for (i = 0; i < config->num_nvram; i++) {
		nvmem_cfg[i].priv = pcf85363;
		FUNC12(pcf85363->rtc, &nvmem_cfg[i]);
	}

	return ret;
}