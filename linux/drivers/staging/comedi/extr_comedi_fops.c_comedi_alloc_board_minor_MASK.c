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
struct device {int dummy; } ;
struct comedi_device {unsigned int minor; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_MAJOR ; 
 unsigned int COMEDI_NUM_BOARD_MINORS ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct comedi_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 struct comedi_device** comedi_board_minor_table ; 
 int /*<<< orphan*/  comedi_board_minor_table_lock ; 
 int /*<<< orphan*/  comedi_class ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 unsigned int comedi_num_legacy_minors ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 struct device* FUNC8 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 struct comedi_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct comedi_device *FUNC13(struct device *hardware_device)
{
	struct comedi_device *dev;
	struct device *csdev;
	unsigned int i;

	dev = FUNC10(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return FUNC0(-ENOMEM);
	FUNC5(dev);
	FUNC6(dev, hardware_device);
	FUNC11(&dev->mutex);
	FUNC11(&comedi_board_minor_table_lock);
	for (i = hardware_device ? comedi_num_legacy_minors : 0;
	     i < COMEDI_NUM_BOARD_MINORS; ++i) {
		if (!comedi_board_minor_table[i]) {
			comedi_board_minor_table[i] = dev;
			break;
		}
	}
	FUNC12(&comedi_board_minor_table_lock);
	if (i == COMEDI_NUM_BOARD_MINORS) {
		FUNC12(&dev->mutex);
		FUNC4(dev);
		FUNC3(dev);
		FUNC7(hardware_device,
			"ran out of minor numbers for board device files\n");
		return FUNC0(-EBUSY);
	}
	dev->minor = i;
	csdev = FUNC8(comedi_class, hardware_device,
			      FUNC2(COMEDI_MAJOR, i), NULL, "comedi%i", i);
	if (!FUNC1(csdev))
		dev->class_dev = FUNC9(csdev);

	/* Note: dev->mutex needs to be unlocked by the caller. */
	return dev;
}