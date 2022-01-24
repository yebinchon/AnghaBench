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
typedef  int u8 ;
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct esp {int scsi_id; int num_tags; int config4; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DC390_EEPROM_LEN ; 
 size_t DC390_EE_ADAPT_SCSI_ID ; 
 size_t DC390_EE_MODE2 ; 
 int DC390_EE_MODE2_ACTIVE_NEGATION ; 
 size_t DC390_EE_TAG_CMD_NUM ; 
 int ESP_CONFIG4_RADE ; 
 int ESP_CONFIG4_RAE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct esp *esp)
{
	struct pci_dev *pdev = FUNC2(esp->dev);
	u8 EEbuf[128];
	u16 *ptr = (u16 *)EEbuf, wval = 0;
	int i;

	FUNC0(pdev, ptr);

	for (i = 0; i < DC390_EEPROM_LEN; i++, ptr++)
		wval += *ptr;

	/* no Tekram EEprom found */
	if (wval != 0x1234) {
		FUNC1(KERN_INFO, &pdev->dev,
			   "No valid Tekram EEprom found\n");
		return;
	}
	esp->scsi_id = EEbuf[DC390_EE_ADAPT_SCSI_ID];
	esp->num_tags = 2 << EEbuf[DC390_EE_TAG_CMD_NUM];
	if (EEbuf[DC390_EE_MODE2] & DC390_EE_MODE2_ACTIVE_NEGATION)
		esp->config4 |= ESP_CONFIG4_RADE | ESP_CONFIG4_RAE;
}