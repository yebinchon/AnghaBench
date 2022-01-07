
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct mgsl_struct {int idle_mode; TYPE_1__ params; int tcsr_value; scalar_t__ usc_idle_mode; } ;
 scalar_t__ IDLEMODE_ALT_MARK_SPACE ;
 scalar_t__ IDLEMODE_ALT_ONE_ZERO ;
 scalar_t__ IDLEMODE_FLAGS ;
 scalar_t__ IDLEMODE_MARK ;
 int IDLEMODE_MASK ;
 scalar_t__ IDLEMODE_ONE ;
 scalar_t__ IDLEMODE_SPACE ;
 scalar_t__ IDLEMODE_ZERO ;
 scalar_t__ MGSL_MODE_RAW ;
 int TCSR ;
 int usc_OutReg (struct mgsl_struct*,int ,int ) ;
 int usc_SetTransmitSyncChars (struct mgsl_struct*,unsigned char,unsigned char) ;

__attribute__((used)) static void usc_set_txidle( struct mgsl_struct *info )
{
 u16 usc_idle_mode = IDLEMODE_FLAGS;



 switch( info->idle_mode ){
 case 132: usc_idle_mode = IDLEMODE_FLAGS; break;
 case 133: usc_idle_mode = IDLEMODE_ALT_ONE_ZERO; break;
 case 128: usc_idle_mode = IDLEMODE_ZERO; break;
 case 130: usc_idle_mode = IDLEMODE_ONE; break;
 case 134: usc_idle_mode = IDLEMODE_ALT_MARK_SPACE; break;
 case 129: usc_idle_mode = IDLEMODE_SPACE; break;
 case 131: usc_idle_mode = IDLEMODE_MARK; break;
 }

 info->usc_idle_mode = usc_idle_mode;

 info->tcsr_value &= ~IDLEMODE_MASK;
 info->tcsr_value += usc_idle_mode;
 usc_OutReg(info, TCSR, info->tcsr_value);
 if ( info->params.mode == MGSL_MODE_RAW ) {
  unsigned char syncpat = 0;
  switch( info->idle_mode ) {
  case 132:
   syncpat = 0x7e;
   break;
  case 133:
   syncpat = 0x55;
   break;
  case 128:
  case 129:
   syncpat = 0x00;
   break;
  case 130:
  case 131:
   syncpat = 0xff;
   break;
  case 134:
   syncpat = 0xaa;
   break;
  }

  usc_SetTransmitSyncChars(info,syncpat,syncpat);
 }

}
