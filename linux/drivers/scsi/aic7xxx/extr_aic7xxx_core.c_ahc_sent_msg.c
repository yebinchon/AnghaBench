
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ahc_softc {size_t msgout_len; scalar_t__* msgout_buf; size_t msgout_index; } ;
typedef scalar_t__ ahc_msgtype ;


 scalar_t__ AHCMSG_1B ;
 scalar_t__ AHCMSG_EXT ;
 int FALSE ;
 scalar_t__ MSG_EXTENDED ;
 scalar_t__ MSG_IGN_WIDE_RESIDUE ;
 scalar_t__ MSG_SIMPLE_TASK ;
 int TRUE ;

__attribute__((used)) static int
ahc_sent_msg(struct ahc_softc *ahc, ahc_msgtype type, u_int msgval, int full)
{
 int found;
 u_int index;

 found = FALSE;
 index = 0;

 while (index < ahc->msgout_len) {
  if (ahc->msgout_buf[index] == MSG_EXTENDED) {
   u_int end_index;

   end_index = index + 1 + ahc->msgout_buf[index + 1];
   if (ahc->msgout_buf[index+2] == msgval
    && type == AHCMSG_EXT) {

    if (full) {
     if (ahc->msgout_index > end_index)
      found = TRUE;
    } else if (ahc->msgout_index > index)
     found = TRUE;
   }
   index = end_index;
  } else if (ahc->msgout_buf[index] >= MSG_SIMPLE_TASK
   && ahc->msgout_buf[index] <= MSG_IGN_WIDE_RESIDUE) {


   index += 2;
  } else {

   if (type == AHCMSG_1B
    && ahc->msgout_buf[index] == msgval
    && ahc->msgout_index > index)
    found = TRUE;
   index++;
  }

  if (found)
   break;
 }
 return (found);
}
