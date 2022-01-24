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
struct us_data {int dummy; } ;

/* Variables and functions */
 size_t ATA_ID_BUF_SIZE ; 
 size_t ATA_ID_CAPABILITY ; 
 size_t ATA_ID_COMMAND_SET_1 ; 
 size_t ATA_ID_COMMAND_SET_2 ; 
 size_t ATA_ID_CONFIG ; 
 size_t ATA_ID_CUR_CYLS ; 
 size_t ATA_ID_CUR_HEADS ; 
 size_t ATA_ID_CUR_SECTORS ; 
 size_t ATA_ID_CYLS ; 
 size_t ATA_ID_DWORD_IO ; 
 size_t ATA_ID_FIELD_VALID ; 
 size_t ATA_ID_FW_REV ; 
 size_t ATA_ID_HEADS ; 
 int ATA_ID_LBA_CAPACITY ; 
 size_t ATA_ID_MAX_MULTSECT ; 
 size_t ATA_ID_MULTSECT ; 
 size_t ATA_ID_OLD_DMA_MODES ; 
 size_t ATA_ID_OLD_PIO_MODES ; 
 size_t ATA_ID_PROD ; 
 size_t ATA_ID_SECTORS ; 
 size_t ATA_ID_SERNO ; 
 int FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct us_data *us, u16 *id)
{
	FUNC1(us, "   Identify Data Structure:\n");
	FUNC1(us, "      config = 0x%x\n",	id[ATA_ID_CONFIG]);
	FUNC1(us, "      cyls = 0x%x\n",		id[ATA_ID_CYLS]);
	FUNC1(us, "      heads = 0x%x\n",	id[ATA_ID_HEADS]);
	FUNC1(us, "      track_bytes = 0x%x\n",	id[4]);
	FUNC1(us, "      sector_bytes = 0x%x\n", id[5]);
	FUNC1(us, "      sectors = 0x%x\n",	id[ATA_ID_SECTORS]);
	FUNC1(us, "      serial_no[0] = 0x%x\n", *(char *)&id[ATA_ID_SERNO]);
	FUNC1(us, "      buf_type = 0x%x\n",	id[20]);
	FUNC1(us, "      buf_size = 0x%x\n",	id[ATA_ID_BUF_SIZE]);
	FUNC1(us, "      ecc_bytes = 0x%x\n",	id[22]);
	FUNC1(us, "      fw_rev[0] = 0x%x\n",	*(char *)&id[ATA_ID_FW_REV]);
	FUNC1(us, "      model[0] = 0x%x\n",	*(char *)&id[ATA_ID_PROD]);
	FUNC1(us, "      max_multsect = 0x%x\n", id[ATA_ID_MAX_MULTSECT] & 0xff);
	FUNC1(us, "      dword_io = 0x%x\n",	id[ATA_ID_DWORD_IO]);
	FUNC1(us, "      capability = 0x%x\n",	id[ATA_ID_CAPABILITY] >> 8);
	FUNC1(us, "      tPIO = 0x%x\n",	  id[ATA_ID_OLD_PIO_MODES] >> 8);
	FUNC1(us, "      tDMA = 0x%x\n",	  id[ATA_ID_OLD_DMA_MODES] >> 8);
	FUNC1(us, "      field_valid = 0x%x\n",	id[ATA_ID_FIELD_VALID]);
	FUNC1(us, "      cur_cyls = 0x%x\n",	id[ATA_ID_CUR_CYLS]);
	FUNC1(us, "      cur_heads = 0x%x\n",	id[ATA_ID_CUR_HEADS]);
	FUNC1(us, "      cur_sectors = 0x%x\n",	id[ATA_ID_CUR_SECTORS]);
	FUNC1(us, "      cur_capacity = 0x%x\n", FUNC0(id, 57));
	FUNC1(us, "      multsect = 0x%x\n",	id[ATA_ID_MULTSECT] & 0xff);
	FUNC1(us, "      lba_capacity = 0x%x\n", FUNC0(id, ATA_ID_LBA_CAPACITY));
	FUNC1(us, "      command_set_1 = 0x%x\n", id[ATA_ID_COMMAND_SET_1]);
	FUNC1(us, "      command_set_2 = 0x%x\n", id[ATA_ID_COMMAND_SET_2]);
}