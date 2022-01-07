
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ delay_write_flag; } ;
struct xd_info {int cis_block; TYPE_1__ delay_write; scalar_t__ zone_cnt; scalar_t__ capacity; scalar_t__ addr_cycle; scalar_t__ page_off; scalar_t__ block_shift; } ;
struct rtsx_chip {struct xd_info xd_card; } ;


 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int XD_CARD ;
 int enable_card_clock (struct rtsx_chip*,int ) ;
 int memset (struct xd_info*,int ,int) ;
 int reset_xd (struct rtsx_chip*) ;
 int xd_init_l2p_tbl (struct rtsx_chip*) ;

int reset_xd_card(struct rtsx_chip *chip)
{
 struct xd_info *xd_card = &chip->xd_card;
 int retval;

 memset(xd_card, 0, sizeof(struct xd_info));

 xd_card->block_shift = 0;
 xd_card->page_off = 0;
 xd_card->addr_cycle = 0;
 xd_card->capacity = 0;
 xd_card->zone_cnt = 0;
 xd_card->cis_block = 0xFFFF;
 xd_card->delay_write.delay_write_flag = 0;

 retval = enable_card_clock(chip, XD_CARD);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = reset_xd(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = xd_init_l2p_tbl(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
