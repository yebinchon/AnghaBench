
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

 unsigned int NI_660X_MAX_RTSI_CHAN ;
 unsigned int NI_660X_MAX_UP_DOWN_PIN ;


 unsigned int NI_660X_RTSI_GATE2_SEL (unsigned int) ;


 unsigned int NI_660X_UD_PIN_GATE2_SEL (unsigned int) ;

 unsigned int NI_GPCT_LOGIC_LOW_GATE_SELECT ;
 unsigned int NI_GPCT_NEXT_OUT_GATE_SELECT ;
 unsigned int NI_GPCT_NEXT_SOURCE_GATE_SELECT ;
 unsigned int NI_GPCT_RTSI_GATE_SELECT (unsigned int) ;
 unsigned int NI_GPCT_SELECTED_GATE_GATE_SELECT ;
 unsigned int NI_GPCT_SOURCE_PIN_i_GATE_SELECT ;
 unsigned int NI_GPCT_UP_DOWN_PIN_GATE_SELECT (unsigned int) ;
 unsigned int NI_GPCT_UP_DOWN_PIN_i_GATE_SELECT ;

__attribute__((used)) static int ni_660x_gate2_to_generic_gate(unsigned int gate, unsigned int *src)
{
 unsigned int source;
 unsigned int i;

 switch (gate) {
 case 129:
  source = NI_GPCT_SOURCE_PIN_i_GATE_SELECT;
  break;
 case 128:
  source = NI_GPCT_UP_DOWN_PIN_i_GATE_SELECT;
  break;
 case 131:
  source = NI_GPCT_NEXT_SOURCE_GATE_SELECT;
  break;
 case 132:
  source = NI_GPCT_NEXT_OUT_GATE_SELECT;
  break;
 case 130:
  source = NI_GPCT_SELECTED_GATE_GATE_SELECT;
  break;
 case 133:
  source = NI_GPCT_LOGIC_LOW_GATE_SELECT;
  break;
 default:
  for (i = 0; i <= NI_660X_MAX_RTSI_CHAN; ++i) {
   if (gate == NI_660X_RTSI_GATE2_SEL(i)) {
    source = NI_GPCT_RTSI_GATE_SELECT(i);
    break;
   }
  }
  if (i <= NI_660X_MAX_RTSI_CHAN)
   break;
  for (i = 0; i <= NI_660X_MAX_UP_DOWN_PIN; ++i) {
   if (gate == NI_660X_UD_PIN_GATE2_SEL(i)) {
    source = NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i);
    break;
   }
  }
  if (i <= NI_660X_MAX_UP_DOWN_PIN)
   break;
  return -EINVAL;
 }
 *src = source;
 return 0;
}
