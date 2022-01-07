
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wd33c93_regs ;
typedef int uchar ;


 int ASR_DBR ;
 int ASR_INT ;
 int CTRL_EDI ;
 int CTRL_IDI ;
 int CTRL_POLLED ;
 int WD_CMD_TRANS_INFO ;
 int WD_CONTROL ;
 int WD_DATA ;
 int read_aux_stat (int const) ;
 int read_wd33c93 (int const,int ) ;
 int write_wd33c93 (int const,int ,int) ;
 int write_wd33c93_cmd (int const,int) ;

__attribute__((used)) static inline uchar
read_1_byte(const wd33c93_regs regs)
{
 uchar asr;
 uchar x = 0;

 write_wd33c93(regs, WD_CONTROL, CTRL_IDI | CTRL_EDI | CTRL_POLLED);
 write_wd33c93_cmd(regs, WD_CMD_TRANS_INFO | 0x80);
 do {
  asr = read_aux_stat(regs);
  if (asr & ASR_DBR)
   x = read_wd33c93(regs, WD_DATA);
 } while (!(asr & ASR_INT));
 return x;
}
