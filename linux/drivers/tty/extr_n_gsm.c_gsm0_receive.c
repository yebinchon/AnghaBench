
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {int state; unsigned int address; unsigned int len; unsigned char control; unsigned int mru; unsigned int count; unsigned char* buf; unsigned char received_fcs; int bad_size; void* fcs; } ;


 unsigned char GSM0_SOF ;
 void* INIT_FCS ;
 void* gsm_fcs_add (void*,unsigned char) ;
 int gsm_queue (struct gsm_mux*) ;
 int gsm_read_ea (unsigned int*,unsigned char) ;

__attribute__((used)) static void gsm0_receive(struct gsm_mux *gsm, unsigned char c)
{
 unsigned int len;

 switch (gsm->state) {
 case 129:
  if (c == GSM0_SOF) {
   gsm->state = 135;
   gsm->address = 0;
   gsm->len = 0;
   gsm->fcs = INIT_FCS;
  }
  break;
 case 135:
  gsm->fcs = gsm_fcs_add(gsm->fcs, c);
  if (gsm_read_ea(&gsm->address, c))
   gsm->state = 134;
  break;
 case 134:
  gsm->fcs = gsm_fcs_add(gsm->fcs, c);
  gsm->control = c;
  gsm->state = 131;
  break;
 case 131:
  gsm->fcs = gsm_fcs_add(gsm->fcs, c);
  if (gsm_read_ea(&gsm->len, c)) {
   if (gsm->len > gsm->mru) {
    gsm->bad_size++;
    gsm->state = 129;
    break;
   }
   gsm->count = 0;
   if (!gsm->len)
    gsm->state = 132;
   else
    gsm->state = 133;
   break;
  }
  gsm->state = 130;
  break;
 case 130:
  gsm->fcs = gsm_fcs_add(gsm->fcs, c);
  len = c;
  gsm->len |= len << 7;
  if (gsm->len > gsm->mru) {
   gsm->bad_size++;
   gsm->state = 129;
   break;
  }
  gsm->count = 0;
  if (!gsm->len)
   gsm->state = 132;
  else
   gsm->state = 133;
  break;
 case 133:
  gsm->buf[gsm->count++] = c;
  if (gsm->count == gsm->len)
   gsm->state = 132;
  break;
 case 132:
  gsm->received_fcs = c;
  gsm_queue(gsm);
  gsm->state = 128;
  break;
 case 128:
  if (c == GSM0_SOF) {
   gsm->state = 129;
   break;
  }
  break;
 }
}
