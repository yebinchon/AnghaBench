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
struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct i2c_multi_inst_data {int num_clients; int /*<<< orphan*/ * clients; } ;
struct i2c_inst_data {char* type; int flags; int /*<<< orphan*/  irq_idx; } ;
struct i2c_board_info {char* dev_name; int irq; int /*<<< orphan*/  type; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  board_info ;
struct TYPE_2__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
#define  IRQ_RESOURCE_APIC 129 
#define  IRQ_RESOURCE_GPIO 128 
 int IRQ_RESOURCE_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 struct acpi_device_id* FUNC4 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  clients ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 char* FUNC7 (struct device*) ; 
 struct i2c_multi_inst_data* FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int,struct i2c_board_info*) ; 
 int FUNC10 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct i2c_multi_inst_data*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct i2c_multi_inst_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct i2c_multi_inst_data *multi;
	const struct acpi_device_id *match;
	const struct i2c_inst_data *inst_data;
	struct i2c_board_info board_info = {};
	struct device *dev = &pdev->dev;
	struct acpi_device *adev;
	char name[32];
	int i, ret;

	match = FUNC4(dev->driver->acpi_match_table, dev);
	if (!match) {
		FUNC6(dev, "Error ACPI match data is missing\n");
		return -ENODEV;
	}
	inst_data = (const struct i2c_inst_data *)match->driver_data;

	adev = FUNC0(dev);

	/* Count number of clients to instantiate */
	ret = FUNC10(adev);
	if (ret < 0)
		return ret;

	multi = FUNC8(dev, FUNC17(multi, clients, ret), GFP_KERNEL);
	if (!multi)
		return -ENOMEM;

	multi->num_clients = ret;

	for (i = 0; i < multi->num_clients && inst_data[i].type; i++) {
		FUNC12(&board_info, 0, sizeof(board_info));
		FUNC16(board_info.type, inst_data[i].type, I2C_NAME_SIZE);
		FUNC15(name, sizeof(name), "%s-%s.%d", FUNC7(dev),
			 inst_data[i].type, i);
		board_info.dev_name = name;
		switch (inst_data[i].flags & IRQ_RESOURCE_TYPE) {
		case IRQ_RESOURCE_GPIO:
			ret = FUNC3(adev, inst_data[i].irq_idx);
			if (ret < 0) {
				FUNC6(dev, "Error requesting irq at index %d: %d\n",
					inst_data[i].irq_idx, ret);
				goto error;
			}
			board_info.irq = ret;
			break;
		case IRQ_RESOURCE_APIC:
			ret = FUNC13(pdev, inst_data[i].irq_idx);
			if (ret < 0) {
				FUNC5(dev, "Error requesting irq at index %d: %d\n",
					inst_data[i].irq_idx, ret);
				goto error;
			}
			board_info.irq = ret;
			break;
		default:
			board_info.irq = 0;
			break;
		}
		multi->clients[i] = FUNC9(dev, i, &board_info);
		if (FUNC1(multi->clients[i])) {
			ret = FUNC2(multi->clients[i]);
			if (ret != -EPROBE_DEFER)
				FUNC6(dev, "Error creating i2c-client, idx %d\n", i);
			goto error;
		}
	}
	if (i < multi->num_clients) {
		FUNC6(dev, "Error finding driver, idx %d\n", i);
		ret = -ENODEV;
		goto error;
	}

	FUNC14(pdev, multi);
	return 0;

error:
	while (--i >= 0)
		FUNC11(multi->clients[i]);

	return ret;
}