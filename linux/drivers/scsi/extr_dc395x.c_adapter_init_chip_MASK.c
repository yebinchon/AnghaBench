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
struct NvRamType {int channel_cfg; int delay_time; } ;
struct AdapterCtlBlk {int config; struct NvRamType eeprom; scalar_t__ last_reset; } ;

/* Variables and functions */
 int FUNC0 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int) ; 
 int DMARESETMODULE ; 
 int /*<<< orphan*/  DO_RSTMODULE ; 
 int DO_RSTSCSI ; 
 int HCC_AUTOTERM ; 
 int HCC_PARITY ; 
 int HCC_SCSI_RESET ; 
 int HCC_WIDE_CARD ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int NAC_POWERON_SCSI_RESET ; 
 int /*<<< orphan*/  TRM_S1040_DMA_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_DMA_INTEN ; 
 int /*<<< orphan*/  TRM_S1040_GEN_STATUS ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_INTEN ; 
 int WIDESCSI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct AdapterCtlBlk *acb)
{
        struct NvRamType *eeprom = &acb->eeprom;
        
        /* Mask all the interrupt */
	FUNC2(acb, TRM_S1040_DMA_INTEN, 0x00);
	FUNC2(acb, TRM_S1040_SCSI_INTEN, 0x00);

	/* Reset SCSI module */
	FUNC1(acb, TRM_S1040_SCSI_CONTROL, DO_RSTMODULE);

	/* Reset PCI/DMA module */
	FUNC2(acb, TRM_S1040_DMA_CONTROL, DMARESETMODULE);
	FUNC4(20);

	/* program configuration 0 */
	acb->config = HCC_AUTOTERM | HCC_PARITY;
	if (FUNC0(acb, TRM_S1040_GEN_STATUS) & WIDESCSI)
		acb->config |= HCC_WIDE_CARD;

	if (eeprom->channel_cfg & NAC_POWERON_SCSI_RESET)
		acb->config |= HCC_SCSI_RESET;

	if (acb->config & HCC_SCSI_RESET) {
		FUNC3(KERN_INFO, "Performing initial SCSI bus reset\n");
		FUNC2(acb, TRM_S1040_SCSI_CONTROL, DO_RSTSCSI);

		/*while (!( DC395x_read8(acb, TRM_S1040_SCSI_INTSTATUS) & INT_SCSIRESET )); */
		/*spin_unlock_irq (&io_request_lock); */
		FUNC4(500);

		acb->last_reset =
		    jiffies + HZ / 2 +
		    HZ * acb->eeprom.delay_time;

		/*spin_lock_irq (&io_request_lock); */
	}
}