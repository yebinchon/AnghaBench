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
typedef  int u16 ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ DB2K_REG_ACQ_SCAN_LIST_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev, u16 entry)
{
	FUNC0(entry & 0x00ff, dev->mmio + DB2K_REG_ACQ_SCAN_LIST_FIFO);
	FUNC0((entry >> 8) & 0x00ff,
	       dev->mmio + DB2K_REG_ACQ_SCAN_LIST_FIFO);
}