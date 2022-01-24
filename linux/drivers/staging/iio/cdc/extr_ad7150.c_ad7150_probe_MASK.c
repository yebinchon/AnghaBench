#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* parent; } ;
struct iio_dev {TYPE_1__ dev; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {scalar_t__ platform_data; } ;
struct i2c_client {unsigned int irq; TYPE_2__ dev; } ;
struct ad7150_chip_info {struct i2c_client* client; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  ad7150_channels ; 
 int /*<<< orphan*/  ad7150_event_handler ; 
 int /*<<< orphan*/  ad7150_info ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 struct iio_dev* FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*,struct iio_dev*) ; 
 int FUNC4 (TYPE_2__*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 struct ad7150_chip_info* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct ad7150_chip_info *chip;
	struct iio_dev *indio_dev;

	indio_dev = FUNC2(&client->dev, sizeof(*chip));
	if (!indio_dev)
		return -ENOMEM;
	chip = FUNC6(indio_dev);
	FUNC7(&chip->state_lock);
	/* this is only used for device removal purposes */
	FUNC5(client, indio_dev);

	chip->client = client;

	indio_dev->name = id->name;
	indio_dev->channels = ad7150_channels;
	indio_dev->num_channels = FUNC0(ad7150_channels);
	/* Establish that the iio_dev is a child of the i2c device */
	indio_dev->dev.parent = &client->dev;

	indio_dev->info = &ad7150_info;

	indio_dev->modes = INDIO_DIRECT_MODE;

	if (client->irq) {
		ret = FUNC4(&client->dev, client->irq,
						NULL,
						&ad7150_event_handler,
						IRQF_TRIGGER_RISING |
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
						"ad7150_irq1",
						indio_dev);
		if (ret)
			return ret;
	}

	if (client->dev.platform_data) {
		ret = FUNC4(&client->dev, *(unsigned int *)
						client->dev.platform_data,
						NULL,
						&ad7150_event_handler,
						IRQF_TRIGGER_RISING |
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
						"ad7150_irq2",
						indio_dev);
		if (ret)
			return ret;
	}

	ret = FUNC3(indio_dev->dev.parent, indio_dev);
	if (ret)
		return ret;

	FUNC1(&client->dev, "%s capacitive sensor registered,irq: %d\n",
		 id->name, client->irq);

	return 0;
}