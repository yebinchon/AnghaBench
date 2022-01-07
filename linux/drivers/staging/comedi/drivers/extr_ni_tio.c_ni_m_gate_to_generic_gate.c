
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int NI_GPCT_AI_START1_GATE_SELECT ;
 unsigned int NI_GPCT_AI_START2_GATE_SELECT ;
 unsigned int NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT ;
 unsigned int NI_GPCT_LOGIC_LOW_GATE_SELECT ;
 unsigned int NI_GPCT_NEXT_OUT_GATE_SELECT ;
 unsigned int NI_GPCT_NEXT_SOURCE_GATE_SELECT ;
 unsigned int NI_GPCT_PFI_GATE_SELECT (unsigned int) ;
 unsigned int NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT ;
 unsigned int NI_GPCT_RTSI_GATE_SELECT (unsigned int) ;
 unsigned int NI_GPCT_TIMESTAMP_MUX_GATE_SELECT ;




 unsigned int NI_M_MAX_PFI_CHAN ;
 unsigned int NI_M_MAX_RTSI_CHAN ;


 unsigned int NI_M_PFI_GATE_SEL (unsigned int) ;

 unsigned int NI_M_RTSI_GATE_SEL (unsigned int) ;


__attribute__((used)) static int ni_m_gate_to_generic_gate(unsigned int gate, unsigned int *src)
{
 unsigned int source;
 unsigned int i;

 switch (gate) {
 case 128:
  source = NI_GPCT_TIMESTAMP_MUX_GATE_SELECT;
  break;
 case 134:
  source = NI_GPCT_AI_START2_GATE_SELECT;
  break;
 case 129:
  source = NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT;
  break;
 case 131:
  source = NI_GPCT_NEXT_OUT_GATE_SELECT;
  break;
 case 135:
  source = NI_GPCT_AI_START1_GATE_SELECT;
  break;
 case 130:
  source = NI_GPCT_NEXT_SOURCE_GATE_SELECT;
  break;
 case 133:
  source = NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT;
  break;
 case 132:
  source = NI_GPCT_LOGIC_LOW_GATE_SELECT;
  break;
 default:
  for (i = 0; i <= NI_M_MAX_RTSI_CHAN; ++i) {
   if (gate == NI_M_RTSI_GATE_SEL(i)) {
    source = NI_GPCT_RTSI_GATE_SELECT(i);
    break;
   }
  }
  if (i <= NI_M_MAX_RTSI_CHAN)
   break;
  for (i = 0; i <= NI_M_MAX_PFI_CHAN; ++i) {
   if (gate == NI_M_PFI_GATE_SEL(i)) {
    source = NI_GPCT_PFI_GATE_SELECT(i);
    break;
   }
  }
  if (i <= NI_M_MAX_PFI_CHAN)
   break;
  return -EINVAL;
 }
 *src = source;
 return 0;
}
