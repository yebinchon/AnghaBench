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
struct iio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct adt7316_chip_info {int /*<<< orphan*/  config1; TYPE_1__ bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7316_INT_POLARITY ; 
 int IRQF_ONESHOT ; 
#define  IRQF_TRIGGER_FALLING 131 
#define  IRQF_TRIGGER_HIGH 130 
#define  IRQF_TRIGGER_LOW 129 
#define  IRQF_TRIGGER_RISING 128 
 int /*<<< orphan*/  adt7316_event_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 struct adt7316_chip_info* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	struct adt7316_chip_info *chip = FUNC3(indio_dev);
	int irq_type, ret;

	irq_type = FUNC5(FUNC4(chip->bus.irq));

	switch (irq_type) {
	case IRQF_TRIGGER_HIGH:
	case IRQF_TRIGGER_RISING:
		break;
	case IRQF_TRIGGER_LOW:
	case IRQF_TRIGGER_FALLING:
		break;
	default:
		FUNC1(&indio_dev->dev, "mode %d unsupported, using IRQF_TRIGGER_LOW\n",
			 irq_type);
		irq_type = IRQF_TRIGGER_LOW;
		break;
	}

	ret = FUNC2(&indio_dev->dev, chip->bus.irq,
					NULL, adt7316_event_handler,
					irq_type | IRQF_ONESHOT,
					indio_dev->name, indio_dev);
	if (ret) {
		FUNC0(&indio_dev->dev, "failed to request irq %d\n",
			chip->bus.irq);
		return ret;
	}

	if (irq_type & IRQF_TRIGGER_HIGH)
		chip->config1 |= ADT7316_INT_POLARITY;

	return 0;
}