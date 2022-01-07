
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;


 unsigned int CR_CHAN (unsigned int) ;
 int EINVAL ;






 unsigned int NI_GPCT_PFI_GATE_SELECT (unsigned int) ;

 unsigned int NI_GPCT_RTSI_GATE_SELECT (unsigned int) ;

 unsigned int NI_M_MAX_PFI_CHAN ;
 unsigned int NI_M_MAX_RTSI_CHAN ;
 int ni_tio_set_gate_raw (struct ni_gpct*,unsigned int) ;

__attribute__((used)) static int ni_m_set_gate(struct ni_gpct *counter, unsigned int gate_source)
{
 unsigned int chan = CR_CHAN(gate_source);
 unsigned int gate_sel;
 unsigned int i;

 switch (chan) {
 case 128:
 case 134:
 case 129:
 case 131:
 case 135:
 case 130:
 case 133:
 case 132:
  gate_sel = chan & 0x1f;
  break;
 default:
  for (i = 0; i <= NI_M_MAX_RTSI_CHAN; ++i) {
   if (chan == NI_GPCT_RTSI_GATE_SELECT(i)) {
    gate_sel = chan & 0x1f;
    break;
   }
  }
  if (i <= NI_M_MAX_RTSI_CHAN)
   break;
  for (i = 0; i <= NI_M_MAX_PFI_CHAN; ++i) {
   if (chan == NI_GPCT_PFI_GATE_SELECT(i)) {
    gate_sel = chan & 0x1f;
    break;
   }
  }
  if (i <= NI_M_MAX_PFI_CHAN)
   break;
  return -EINVAL;
 }
 ni_tio_set_gate_raw(counter, gate_sel);
 return 0;
}
