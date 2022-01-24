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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct db2k_private {void* plx; } ;
struct db2k_boardtype {scalar_t__ has_2_ao; scalar_t__ name; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  insn_write; int /*<<< orphan*/  type; int /*<<< orphan*/  insn_read; } ;
struct comedi_device {struct comedi_subdevice* subdevices; void* mmio; scalar_t__ board_name; struct db2k_boardtype const* board_ptr; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct db2k_boardtype*) ; 
 int /*<<< orphan*/  COMEDI_SUBD_AI ; 
 int /*<<< orphan*/  COMEDI_SUBD_AO ; 
 int /*<<< orphan*/  DB2K_FIRMWARE ; 
 int /*<<< orphan*/  DB2K_REG_DIO_P2_EXP_IO_8_BIT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int SDF_GROUND ; 
 int SDF_READABLE ; 
 int SDF_WRITABLE ; 
 struct db2k_private* FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_subdevice*) ; 
 int FUNC3 (struct comedi_device*,int) ; 
 int FUNC4 (struct comedi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct comedi_device*) ; 
 struct pci_dev* FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  db2k_8255_cb ; 
 int /*<<< orphan*/  db2k_ai_insn_read ; 
 int /*<<< orphan*/  db2k_ai_range ; 
 int /*<<< orphan*/  db2k_ao_insn_write ; 
 struct db2k_boardtype* db2k_boardtypes ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*) ; 
 int /*<<< orphan*/  db2k_load_firmware ; 
 void* FUNC9 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  range_bipolar10 ; 
 int FUNC10 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct comedi_device *dev, unsigned long context)
{
	struct pci_dev *pcidev = FUNC6(dev);
	const struct db2k_boardtype *board;
	struct db2k_private *devpriv;
	struct comedi_subdevice *s;
	int result;

	if (context >= FUNC0(db2k_boardtypes))
		return -ENODEV;
	board = &db2k_boardtypes[context];
	if (!board->name)
		return -ENODEV;
	dev->board_ptr = board;
	dev->board_name = board->name;

	devpriv = FUNC1(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	result = FUNC5(dev);
	if (result)
		return result;

	devpriv->plx = FUNC9(pcidev, 0);
	dev->mmio = FUNC9(pcidev, 2);
	if (!devpriv->plx || !dev->mmio)
		return -ENOMEM;

	result = FUNC3(dev, 3);
	if (result)
		return result;

	result = FUNC4(dev, &FUNC6(dev)->dev,
				      DB2K_FIRMWARE, db2k_load_firmware, 0);
	if (result < 0)
		return result;

	FUNC8(dev);
	FUNC7(dev);

	s = &dev->subdevices[0];
	/* ai subdevice */
	s->type = COMEDI_SUBD_AI;
	s->subdev_flags = SDF_READABLE | SDF_GROUND;
	s->n_chan = 24;
	s->maxdata = 0xffff;
	s->insn_read = db2k_ai_insn_read;
	s->range_table = &db2k_ai_range;

	s = &dev->subdevices[1];
	/* ao subdevice */
	s->type = COMEDI_SUBD_AO;
	s->subdev_flags = SDF_WRITABLE;
	s->n_chan = board->has_2_ao ? 2 : 4;
	s->maxdata = 0xffff;
	s->insn_write = db2k_ao_insn_write;
	s->range_table = &range_bipolar10;

	result = FUNC2(s);
	if (result)
		return result;

	s = &dev->subdevices[2];
	return FUNC10(dev, s, db2k_8255_cb,
				DB2K_REG_DIO_P2_EXP_IO_8_BIT);
}