
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_tape {scalar_t__ ready; unsigned char c_algo; int compression_changed; TYPE_1__* buffer; } ;
struct TYPE_2__ {unsigned char* b_data; } ;


 int COMPRESSION_PAGE ;
 int CP_OFF_C_ALGO ;
 int CP_OFF_DCE_DCC ;
 unsigned char DCC_MASK ;
 unsigned char DCE_MASK ;
 int DEBC_printk (struct scsi_tape*,char*,...) ;
 int EIO ;
 size_t MH_OFF_BDESCS_LENGTH ;
 unsigned char MODE_HEADER_LENGTH ;
 scalar_t__ ST_READY ;
 int read_mode_page (struct scsi_tape*,int ,int ) ;
 int write_mode_page (struct scsi_tape*,int ,int ) ;

__attribute__((used)) static int st_compression(struct scsi_tape * STp, int state)
{
 int retval;
 int mpoffs;
 unsigned char *b_data = (STp->buffer)->b_data;

 if (STp->ready != ST_READY)
  return (-EIO);


 retval = read_mode_page(STp, COMPRESSION_PAGE, 0);
 if (retval) {
  DEBC_printk(STp, "Compression mode page not supported.\n");
  return (-EIO);
 }

 mpoffs = MODE_HEADER_LENGTH + b_data[MH_OFF_BDESCS_LENGTH];
 DEBC_printk(STp, "Compression state is %d.\n",
      (b_data[mpoffs + CP_OFF_DCE_DCC] & DCE_MASK ? 1 : 0));


 if ((b_data[mpoffs + CP_OFF_DCE_DCC] & DCC_MASK) == 0) {
  DEBC_printk(STp, "Compression not supported.\n");
  return (-EIO);
 }


 if (state) {
  b_data[mpoffs + CP_OFF_DCE_DCC] |= DCE_MASK;
  if (STp->c_algo != 0)
   b_data[mpoffs + CP_OFF_C_ALGO] = STp->c_algo;
 }
 else {
  b_data[mpoffs + CP_OFF_DCE_DCC] &= ~DCE_MASK;
  if (STp->c_algo != 0)
   b_data[mpoffs + CP_OFF_C_ALGO] = 0;
 }

 retval = write_mode_page(STp, COMPRESSION_PAGE, 0);
 if (retval) {
  DEBC_printk(STp, "Compression change failed.\n");
  return (-EIO);
 }
 DEBC_printk(STp, "Compression state changed to %d.\n", state);

 STp->compression_changed = 1;
 return 0;
}
