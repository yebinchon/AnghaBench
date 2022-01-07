
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct xd_info {int block_shift; } ;
struct rtsx_chip {struct xd_info xd_card; } ;


 int BLK_NOT_FOUND ;
 int CARD_DATA_SOURCE ;
 int CHECK_REG_CMD ;
 int PINGPONG_BUFFER ;
 scalar_t__ PROGRAM_ERROR ;
 int STATUS_FAIL ;
 scalar_t__ STATUS_SUCCESS ;
 int WRITE_REG_CMD ;
 int XD_AUTO_CHK_DATA_STATUS ;
 int XD_BLOCK_STATUS ;
 int XD_BPG ;
 int XD_CARD ;
 scalar_t__ XD_CHK_BAD_OLDBLK (struct xd_info*) ;
 int XD_CHK_DATA_STATUS ;
 int XD_CLR_BAD_NEWBLK (struct xd_info*) ;
 int XD_CTL ;
 int XD_DAT ;
 scalar_t__ XD_ECC1_ERROR ;
 scalar_t__ XD_ECC1_UNCORRECTABLE ;
 scalar_t__ XD_ECC2_ERROR ;
 scalar_t__ XD_ECC2_UNCORRECTABLE ;
 int XD_GBLK ;
 int XD_NO_CARD ;
 int XD_PAGE_CNT ;
 int XD_PAGE_STATUS ;
 int XD_PRG_ERROR ;
 int XD_READ_PAGES ;
 int XD_RW_ADDR ;
 int XD_SET_BAD_NEWBLK (struct xd_info*) ;
 int XD_SET_BAD_OLDBLK (struct xd_info*) ;
 int XD_TO_ERROR ;
 int XD_TRANSFER ;
 int XD_TRANSFER_END ;
 int XD_TRANSFER_START ;
 int XD_WRITE_PAGES ;
 scalar_t__ detect_card_cd (struct rtsx_chip*,int ) ;
 int dev_dbg (int ,char*,int,...) ;
 int mdelay (int) ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;
 int rtsx_clear_xd_error (struct rtsx_chip*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int ,scalar_t__*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int ) ;
 int xd_assign_phy_addr (struct rtsx_chip*,int,int ) ;
 int xd_mark_bad_block (struct rtsx_chip*,int) ;
 int xd_set_err_code (struct rtsx_chip*,int ) ;

__attribute__((used)) static int xd_copy_page(struct rtsx_chip *chip, u32 old_blk, u32 new_blk,
   u8 start_page, u8 end_page)
{
 struct xd_info *xd_card = &chip->xd_card;
 u32 old_page, new_page;
 u8 i, reg = 0;
 int retval;

 dev_dbg(rtsx_dev(chip), "Copy page from block 0x%x to block 0x%x\n",
  old_blk, new_blk);

 if (start_page > end_page)
  return STATUS_FAIL;

 if ((old_blk == BLK_NOT_FOUND) || (new_blk == BLK_NOT_FOUND))
  return STATUS_FAIL;

 old_page = (old_blk << xd_card->block_shift) + start_page;
 new_page = (new_blk << xd_card->block_shift) + start_page;

 XD_CLR_BAD_NEWBLK(xd_card);

 retval = rtsx_write_register(chip, CARD_DATA_SOURCE, 0x01,
         PINGPONG_BUFFER);
 if (retval)
  return retval;

 for (i = start_page; i < end_page; i++) {
  if (detect_card_cd(chip, XD_CARD) != STATUS_SUCCESS) {
   rtsx_clear_xd_error(chip);
   xd_set_err_code(chip, XD_NO_CARD);
   return STATUS_FAIL;
  }

  rtsx_init_cmd(chip);

  xd_assign_phy_addr(chip, old_page, XD_RW_ADDR);

  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_PAGE_CNT, 0xFF, 1);
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_CHK_DATA_STATUS,
        XD_AUTO_CHK_DATA_STATUS, 0);
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
        XD_TRANSFER_START | XD_READ_PAGES);
  rtsx_add_cmd(chip, CHECK_REG_CMD, XD_TRANSFER,
        XD_TRANSFER_END, XD_TRANSFER_END);

  retval = rtsx_send_cmd(chip, XD_CARD, 500);
  if (retval < 0) {
   rtsx_clear_xd_error(chip);
   reg = 0;
   rtsx_read_register(chip, XD_CTL, &reg);
   if (reg & (XD_ECC1_ERROR | XD_ECC2_ERROR)) {
    mdelay(100);

    if (detect_card_cd(chip,
         XD_CARD) != STATUS_SUCCESS) {
     xd_set_err_code(chip, XD_NO_CARD);
     return STATUS_FAIL;
    }

    if (((reg & XD_ECC1_ERROR) &&
         (reg & XD_ECC1_UNCORRECTABLE)) ||
        ((reg & XD_ECC2_ERROR) &&
         (reg & XD_ECC2_UNCORRECTABLE))) {
     rtsx_write_register(chip,
           XD_PAGE_STATUS,
           0xFF,
           XD_BPG);
     rtsx_write_register(chip,
           XD_BLOCK_STATUS,
           0xFF,
           XD_GBLK);
     XD_SET_BAD_OLDBLK(xd_card);
     dev_dbg(rtsx_dev(chip), "old block 0x%x ecc error\n",
      old_blk);
    }
   } else {
    xd_set_err_code(chip, XD_TO_ERROR);
    return STATUS_FAIL;
   }
  }

  if (XD_CHK_BAD_OLDBLK(xd_card))
   rtsx_clear_xd_error(chip);

  rtsx_init_cmd(chip);

  xd_assign_phy_addr(chip, new_page, XD_RW_ADDR);
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_PAGE_CNT, 0xFF, 1);
  rtsx_add_cmd(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
        XD_TRANSFER_START | XD_WRITE_PAGES);
  rtsx_add_cmd(chip, CHECK_REG_CMD, XD_TRANSFER,
        XD_TRANSFER_END, XD_TRANSFER_END);

  retval = rtsx_send_cmd(chip, XD_CARD, 300);
  if (retval < 0) {
   rtsx_clear_xd_error(chip);
   reg = 0;
   rtsx_read_register(chip, XD_DAT, &reg);
   if (reg & PROGRAM_ERROR) {
    xd_mark_bad_block(chip, new_blk);
    xd_set_err_code(chip, XD_PRG_ERROR);
    XD_SET_BAD_NEWBLK(xd_card);
   } else {
    xd_set_err_code(chip, XD_TO_ERROR);
   }
   return STATUS_FAIL;
  }

  old_page++;
  new_page++;
 }

 return STATUS_SUCCESS;
}
