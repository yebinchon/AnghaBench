#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wd719x_host_param {int dummy; } ;
struct wd719x_eeprom_header {char sig1; char sig2; int /*<<< orphan*/  cfg_offset; } ;
struct wd719x {scalar_t__ type; TYPE_2__* params; TYPE_1__* pdev; } ;
struct eeprom_93cx6 {int /*<<< orphan*/  width; int /*<<< orphan*/  register_write; int /*<<< orphan*/  register_read; struct wd719x* data; } ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_4__ {int ch_1_th; int scsi_conf; int own_scsi_id; int sel_timeout; int sleep_timer; int scsi_pad; int soft_mask; int unsol_mask; void* tag_en; void* sync; void* wide; void* cdb_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EEPROM_WIDTH_93C46 ; 
 int WD719X_EE_CLK ; 
 int WD719X_EE_CS ; 
 int WD719X_EE_DI ; 
 int WD719X_EE_DO ; 
 int /*<<< orphan*/  WD719X_PCI_GPIO_CONTROL ; 
 int /*<<< orphan*/  WD719X_PCI_GPIO_DATA ; 
 scalar_t__ WD719X_TYPE_7193 ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char,char) ; 
 int /*<<< orphan*/  FUNC3 (struct eeprom_93cx6*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  wd719x_eeprom_reg_read ; 
 int /*<<< orphan*/  wd719x_eeprom_reg_write ; 
 int FUNC4 (struct wd719x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wd719x*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct wd719x *wd)
{
	struct eeprom_93cx6 eeprom;
	u8 gpio;
	struct wd719x_eeprom_header header;

	eeprom.data = wd;
	eeprom.register_read = wd719x_eeprom_reg_read;
	eeprom.register_write = wd719x_eeprom_reg_write;
	eeprom.width = PCI_EEPROM_WIDTH_93C46;

	/* set all outputs to low */
	FUNC5(wd, WD719X_PCI_GPIO_DATA, 0);
	/* configure GPIO pins */
	gpio = FUNC4(wd, WD719X_PCI_GPIO_CONTROL);
	/* GPIO outputs */
	gpio &= (~(WD719X_EE_CLK | WD719X_EE_DI | WD719X_EE_CS));
	/* GPIO input */
	gpio |= WD719X_EE_DO;
	FUNC5(wd, WD719X_PCI_GPIO_CONTROL, gpio);

	/* read EEPROM header */
	FUNC3(&eeprom, 0, (u8 *)&header, sizeof(header));

	if (header.sig1 == 'W' && header.sig2 == 'D')
		FUNC3(&eeprom, header.cfg_offset,
					(u8 *)wd->params,
					sizeof(struct wd719x_host_param));
	else { /* default EEPROM values */
		FUNC2(&wd->pdev->dev, "EEPROM signature is invalid (0x%02x 0x%02x), using default values\n",
			 header.sig1, header.sig2);
		wd->params->ch_1_th	= 0x10;	/* 16 DWs = 64 B */
		wd->params->scsi_conf	= 0x4c;	/* 48ma, spue, parity check */
		wd->params->own_scsi_id	= 0x07;	/* ID 7, SCAM disabled */
		wd->params->sel_timeout = 0x4d;	/* 250 ms */
		wd->params->sleep_timer	= 0x01;
		wd->params->cdb_size	= FUNC0(0x5555);	/* all 6 B */
		wd->params->scsi_pad	= 0x1b;
		if (wd->type == WD719X_TYPE_7193) /* narrow card - disable */
			wd->params->wide = FUNC1(0x00000000);
		else	/* initiate & respond to WIDE messages */
			wd->params->wide = FUNC1(0xffffffff);
		wd->params->sync	= FUNC1(0xffffffff);
		wd->params->soft_mask	= 0x00;	/* all disabled */
		wd->params->unsol_mask	= 0x00;	/* all disabled */
	}
	/* disable TAGGED messages */
	wd->params->tag_en = FUNC0(0x0000);
}