
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ushort ;
typedef int uchar ;
typedef int PortAddr ;
typedef int ASCEEP_CONFIG ;


 int ASC_EEP_DVC_CFG_BEG ;
 int ASC_EEP_DVC_CFG_BEG_VL ;
 int ASC_EEP_MAX_DVC_ADDR ;
 int ASC_EEP_MAX_DVC_ADDR_VL ;
 scalar_t__ ASC_IS_VL ;
 scalar_t__ AscReadEEPWord (int ,int ) ;
 scalar_t__ AscWriteEEPWord (int ,int ,scalar_t__) ;
 scalar_t__ cpu_to_le16 (scalar_t__) ;
 scalar_t__ le16_to_cpu (scalar_t__) ;

__attribute__((used)) static int AscSetEEPConfigOnce(PortAddr iop_base, ASCEEP_CONFIG *cfg_buf,
          ushort bus_type)
{
 int n_error;
 ushort *wbuf;
 ushort word;
 ushort sum;
 int s_addr;
 int cfg_beg;
 int cfg_end;
 int uchar_end_in_config = ASC_EEP_MAX_DVC_ADDR - 2;

 wbuf = (ushort *)cfg_buf;
 n_error = 0;
 sum = 0;

 for (s_addr = 0; s_addr < 2; s_addr++, wbuf++) {
  sum += *wbuf;
  if (*wbuf != AscWriteEEPWord(iop_base, (uchar)s_addr, *wbuf)) {
   n_error++;
  }
 }
 if (bus_type & ASC_IS_VL) {
  cfg_beg = ASC_EEP_DVC_CFG_BEG_VL;
  cfg_end = ASC_EEP_MAX_DVC_ADDR_VL;
 } else {
  cfg_beg = ASC_EEP_DVC_CFG_BEG;
  cfg_end = ASC_EEP_MAX_DVC_ADDR;
 }
 for (s_addr = cfg_beg; s_addr <= (cfg_end - 1); s_addr++, wbuf++) {
  if (s_addr <= uchar_end_in_config) {




   word = cpu_to_le16(*wbuf);
   if (word !=
       AscWriteEEPWord(iop_base, (uchar)s_addr, word)) {
    n_error++;
   }
  } else {

   if (*wbuf !=
       AscWriteEEPWord(iop_base, (uchar)s_addr, *wbuf)) {
    n_error++;
   }
  }
  sum += *wbuf;
 }

 *wbuf = sum;
 if (sum != AscWriteEEPWord(iop_base, (uchar)s_addr, sum)) {
  n_error++;
 }


 wbuf = (ushort *)cfg_buf;



 for (s_addr = 0; s_addr < 2; s_addr++, wbuf++) {
  if (*wbuf != AscReadEEPWord(iop_base, (uchar)s_addr)) {
   n_error++;
  }
 }
 if (bus_type & ASC_IS_VL) {
  cfg_beg = ASC_EEP_DVC_CFG_BEG_VL;
  cfg_end = ASC_EEP_MAX_DVC_ADDR_VL;
 } else {
  cfg_beg = ASC_EEP_DVC_CFG_BEG;
  cfg_end = ASC_EEP_MAX_DVC_ADDR;
 }
 for (s_addr = cfg_beg; s_addr <= (cfg_end - 1); s_addr++, wbuf++) {
  if (s_addr <= uchar_end_in_config) {




   word =
       le16_to_cpu(AscReadEEPWord
     (iop_base, (uchar)s_addr));
  } else {

   word = AscReadEEPWord(iop_base, (uchar)s_addr);
  }
  if (*wbuf != word) {
   n_error++;
  }
 }

 if (AscReadEEPWord(iop_base, (uchar)s_addr) != sum) {
  n_error++;
 }
 return n_error;
}
