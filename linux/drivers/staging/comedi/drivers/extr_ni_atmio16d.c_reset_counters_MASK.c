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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ AD_CLEAR_REG ; 
 scalar_t__ AM9513A_COM_REG ; 
 scalar_t__ AM9513A_DATA_REG ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev)
{
	/* Counter 2 */
	FUNC0(0xFFC2, dev->iobase + AM9513A_COM_REG);
	FUNC0(0xFF02, dev->iobase + AM9513A_COM_REG);
	FUNC0(0x4, dev->iobase + AM9513A_DATA_REG);
	FUNC0(0xFF0A, dev->iobase + AM9513A_COM_REG);
	FUNC0(0x3, dev->iobase + AM9513A_DATA_REG);
	FUNC0(0xFF42, dev->iobase + AM9513A_COM_REG);
	FUNC0(0xFF42, dev->iobase + AM9513A_COM_REG);
	/* Counter 3 */
	FUNC0(0xFFC4, dev->iobase + AM9513A_COM_REG);
	FUNC0(0xFF03, dev->iobase + AM9513A_COM_REG);
	FUNC0(0x4, dev->iobase + AM9513A_DATA_REG);
	FUNC0(0xFF0B, dev->iobase + AM9513A_COM_REG);
	FUNC0(0x3, dev->iobase + AM9513A_DATA_REG);
	FUNC0(0xFF44, dev->iobase + AM9513A_COM_REG);
	FUNC0(0xFF44, dev->iobase + AM9513A_COM_REG);
	/* Counter 4 */
	FUNC0(0xFFC8, dev->iobase + AM9513A_COM_REG);
	FUNC0(0xFF04, dev->iobase + AM9513A_COM_REG);
	FUNC0(0x4, dev->iobase + AM9513A_DATA_REG);
	FUNC0(0xFF0C, dev->iobase + AM9513A_COM_REG);
	FUNC0(0x3, dev->iobase + AM9513A_DATA_REG);
	FUNC0(0xFF48, dev->iobase + AM9513A_COM_REG);
	FUNC0(0xFF48, dev->iobase + AM9513A_COM_REG);
	/* Counter 5 */
	FUNC0(0xFFD0, dev->iobase + AM9513A_COM_REG);
	FUNC0(0xFF05, dev->iobase + AM9513A_COM_REG);
	FUNC0(0x4, dev->iobase + AM9513A_DATA_REG);
	FUNC0(0xFF0D, dev->iobase + AM9513A_COM_REG);
	FUNC0(0x3, dev->iobase + AM9513A_DATA_REG);
	FUNC0(0xFF50, dev->iobase + AM9513A_COM_REG);
	FUNC0(0xFF50, dev->iobase + AM9513A_COM_REG);

	FUNC0(0, dev->iobase + AD_CLEAR_REG);
}