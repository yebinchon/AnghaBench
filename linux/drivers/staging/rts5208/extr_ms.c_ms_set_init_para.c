
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_info {int ms_clock; } ;
struct rtsx_chip {int fpga_ms_1bit_clk; int asic_ms_1bit_clk; scalar_t__ asic_code; int fpga_ms_4bit_clk; int asic_ms_4bit_clk; int fpga_ms_hg_clk; int asic_ms_hg_clk; struct ms_info ms_card; } ;


 scalar_t__ CHK_HG8BIT (struct ms_info*) ;
 scalar_t__ CHK_MS4BIT (struct ms_info*) ;
 scalar_t__ CHK_MSPRO (struct ms_info*) ;
 int MS_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int select_card (struct rtsx_chip*,int ) ;
 int switch_clock (struct rtsx_chip*,int ) ;

__attribute__((used)) static int ms_set_init_para(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval;

 if (CHK_HG8BIT(ms_card)) {
  if (chip->asic_code)
   ms_card->ms_clock = chip->asic_ms_hg_clk;
  else
   ms_card->ms_clock = chip->fpga_ms_hg_clk;

 } else if (CHK_MSPRO(ms_card) || CHK_MS4BIT(ms_card)) {
  if (chip->asic_code)
   ms_card->ms_clock = chip->asic_ms_4bit_clk;
  else
   ms_card->ms_clock = chip->fpga_ms_4bit_clk;

 } else {
  if (chip->asic_code)
   ms_card->ms_clock = chip->asic_ms_1bit_clk;
  else
   ms_card->ms_clock = chip->fpga_ms_1bit_clk;
 }

 retval = switch_clock(chip, ms_card->ms_clock);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = select_card(chip, MS_CARD);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
