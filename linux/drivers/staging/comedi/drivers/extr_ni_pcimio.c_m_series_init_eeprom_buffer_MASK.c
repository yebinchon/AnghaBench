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
struct ni_private {int /*<<< orphan*/ * eeprom_buffer; struct mite* mite; } ;
struct mite {scalar_t__ mmio; int /*<<< orphan*/  pcidev; } ;
struct comedi_device {struct ni_private* private; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 scalar_t__ MITE_IODWBSR ; 
 scalar_t__ MITE_IODWBSR_1 ; 
 scalar_t__ MITE_IODWCR_1 ; 
 int M_SERIES_EEPROM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int const) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	struct mite *mite = devpriv->mite;
	resource_size_t daq_phys_addr;
	static const int Start_Cal_EEPROM = 0x400;
	static const unsigned int window_size = 10;
	unsigned int old_iodwbsr_bits;
	unsigned int old_iodwbsr1_bits;
	unsigned int old_iodwcr1_bits;
	int i;

	/* IO Window 1 needs to be temporarily mapped to read the eeprom */
	daq_phys_addr = FUNC1(mite->pcidev, 1);

	old_iodwbsr_bits = FUNC2(mite->mmio + MITE_IODWBSR);
	old_iodwbsr1_bits = FUNC2(mite->mmio + MITE_IODWBSR_1);
	old_iodwcr1_bits = FUNC2(mite->mmio + MITE_IODWCR_1);
	FUNC3(0x0, mite->mmio + MITE_IODWBSR);
	FUNC3(((0x80 | window_size) | daq_phys_addr),
	       mite->mmio + MITE_IODWBSR_1);
	FUNC3(0x1 | old_iodwcr1_bits, mite->mmio + MITE_IODWCR_1);
	FUNC3(0xf, mite->mmio + 0x30);

	for (i = 0; i < M_SERIES_EEPROM_SIZE; ++i)
		devpriv->eeprom_buffer[i] = FUNC0(dev, Start_Cal_EEPROM + i);

	FUNC3(old_iodwbsr1_bits, mite->mmio + MITE_IODWBSR_1);
	FUNC3(old_iodwbsr_bits, mite->mmio + MITE_IODWBSR);
	FUNC3(old_iodwcr1_bits, mite->mmio + MITE_IODWCR_1);
	FUNC3(0x0, mite->mmio + 0x30);
}