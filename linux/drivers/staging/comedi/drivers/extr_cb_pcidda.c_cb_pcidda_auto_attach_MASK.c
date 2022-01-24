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
struct pci_dev {int dummy; } ;
struct comedi_subdevice {int n_chan; int maxdata; int /*<<< orphan*/  insn_write; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  subdev_flags; int /*<<< orphan*/  type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; void* iobase; int /*<<< orphan*/  board_name; struct cb_pcidda_board const* board_ptr; } ;
struct cb_pcidda_private {int /*<<< orphan*/ * ao_range; int /*<<< orphan*/ * eeprom_data; void* daqio; } ;
struct cb_pcidda_board {int ao_chans; int ao_bits; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct cb_pcidda_board*) ; 
 int /*<<< orphan*/  COMEDI_SUBD_AO ; 
 int EEPROM_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int I8255_SIZE ; 
 int /*<<< orphan*/  SDF_WRITABLE ; 
 int /*<<< orphan*/  cb_pcidda_ao_insn_write ; 
 struct cb_pcidda_board* cb_pcidda_boards ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cb_pcidda_ranges ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 
 struct cb_pcidda_private* FUNC3 (struct comedi_device*,int) ; 
 int FUNC4 (struct comedi_device*,int) ; 
 int FUNC5 (struct comedi_device*) ; 
 struct pci_dev* FUNC6 (struct comedi_device*) ; 
 void* FUNC7 (struct pci_dev*,int) ; 
 int FUNC8 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
				 unsigned long context)
{
	struct pci_dev *pcidev = FUNC6(dev);
	const struct cb_pcidda_board *board = NULL;
	struct cb_pcidda_private *devpriv;
	struct comedi_subdevice *s;
	int i;
	int ret;

	if (context < FUNC0(cb_pcidda_boards))
		board = &cb_pcidda_boards[context];
	if (!board)
		return -ENODEV;
	dev->board_ptr = board;
	dev->board_name = board->name;

	devpriv = FUNC3(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	ret = FUNC5(dev);
	if (ret)
		return ret;
	dev->iobase = FUNC7(pcidev, 2);
	devpriv->daqio = FUNC7(pcidev, 3);

	ret = FUNC4(dev, 3);
	if (ret)
		return ret;

	s = &dev->subdevices[0];
	/* analog output subdevice */
	s->type = COMEDI_SUBD_AO;
	s->subdev_flags = SDF_WRITABLE;
	s->n_chan = board->ao_chans;
	s->maxdata = (1 << board->ao_bits) - 1;
	s->range_table = &cb_pcidda_ranges;
	s->insn_write = cb_pcidda_ao_insn_write;

	/* two 8255 digital io subdevices */
	for (i = 0; i < 2; i++) {
		s = &dev->subdevices[1 + i];
		ret = FUNC8(dev, s, NULL, i * I8255_SIZE);
		if (ret)
			return ret;
	}

	/* Read the caldac eeprom data */
	for (i = 0; i < EEPROM_SIZE; i++)
		devpriv->eeprom_data[i] = FUNC2(dev, i);

	/*  set calibrations dacs */
	for (i = 0; i < board->ao_chans; i++)
		FUNC1(dev, i, devpriv->ao_range[i]);

	return 0;
}