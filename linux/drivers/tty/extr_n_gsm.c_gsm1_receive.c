
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int state; size_t count; unsigned char* buf; size_t len; int escape; unsigned char control; size_t mru; int bad_size; void* fcs; int address; int malformed; } ;


 unsigned char GSM1_ESCAPE ;
 unsigned char GSM1_ESCAPE_BITS ;
 unsigned char GSM1_SOF ;




 int GSM_SEARCH ;

 void* INIT_FCS ;
 void* gsm_fcs_add (void*,unsigned char) ;
 int gsm_queue (struct gsm_mux*) ;
 int gsm_read_ea (int *,unsigned char) ;

__attribute__((used)) static void gsm1_receive(struct gsm_mux *gsm, unsigned char c)
{
 if (c == GSM1_SOF) {


  if (gsm->state == 130 && gsm->count) {

   gsm->count--;
   gsm->fcs = gsm_fcs_add(gsm->fcs, gsm->buf[gsm->count]);
   gsm->len = gsm->count;
   gsm_queue(gsm);
   gsm->state = 128;
   return;
  }

  if (gsm->state != 128) {
   gsm->malformed++;
   gsm->state = 128;
  }


  return;
 }

 if (c == GSM1_ESCAPE) {
  gsm->escape = 1;
  return;
 }


 if (gsm->state == GSM_SEARCH)
  return;

 if (gsm->escape) {
  c ^= GSM1_ESCAPE_BITS;
  gsm->escape = 0;
 }
 switch (gsm->state) {
 case 128:
  gsm->address = 0;
  gsm->state = 132;
  gsm->fcs = INIT_FCS;

 case 132:
  gsm->fcs = gsm_fcs_add(gsm->fcs, c);
  if (gsm_read_ea(&gsm->address, c))
   gsm->state = 131;
  break;
 case 131:
  gsm->fcs = gsm_fcs_add(gsm->fcs, c);
  gsm->control = c;
  gsm->count = 0;
  gsm->state = 130;
  break;
 case 130:
  if (gsm->count > gsm->mru) {
   gsm->state = 129;
   gsm->bad_size++;
  } else
   gsm->buf[gsm->count++] = c;
  break;
 case 129:
  break;
 }
}
