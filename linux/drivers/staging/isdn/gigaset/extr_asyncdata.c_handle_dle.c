
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf_t {int inputstate; int* data; size_t head; size_t tail; struct cardstate* cs; } ;
struct cardstate {scalar_t__ mstate; int dev; scalar_t__ dle; } ;



 int INS_DLE_char ;
 int INS_DLE_command ;
 int INS_command ;
 scalar_t__ MS_LOCKED ;
 size_t RBUFSIZE ;
 int dev_notice (int ,char*,...) ;

__attribute__((used)) static void handle_dle(struct inbuf_t *inbuf)
{
 struct cardstate *cs = inbuf->cs;

 if (cs->mstate == MS_LOCKED)
  return;

 if (!(inbuf->inputstate & INS_DLE_char)) {

  if (inbuf->data[inbuf->head] == 128 &&
      (cs->dle || inbuf->inputstate & INS_DLE_command)) {

   inbuf->head++;
   if (inbuf->head == inbuf->tail ||
       inbuf->head == RBUFSIZE) {

    inbuf->inputstate |= INS_DLE_char;
    return;
   }
  } else {

   return;
  }
 }


 inbuf->inputstate &= ~INS_DLE_char;

 switch (inbuf->data[inbuf->head]) {
 case 'X':
  if (inbuf->inputstate & INS_command)
   dev_notice(cs->dev,
       "received <DLE>X in command mode\n");
  inbuf->inputstate |= INS_command | INS_DLE_command;
  inbuf->head++;
  break;
 case '.':
  if (!(inbuf->inputstate & INS_DLE_command))
   dev_notice(cs->dev,
       "received <DLE>. without <DLE>X\n");
  inbuf->inputstate &= ~INS_DLE_command;

  if (cs->dle)
   inbuf->inputstate &= ~INS_command;
  inbuf->head++;
  break;
 case 128:

  inbuf->inputstate |= INS_DLE_char;
  if (!(cs->dle || inbuf->inputstate & INS_DLE_command))
   dev_notice(cs->dev,
       "received <DLE><DLE> not in DLE mode\n");
  break;
 default:
  dev_notice(cs->dev, "received <DLE><%02x>\n",
      inbuf->data[inbuf->head]);

 }
}
