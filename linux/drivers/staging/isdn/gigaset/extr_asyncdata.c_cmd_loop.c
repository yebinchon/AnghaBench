
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf_t {unsigned char* data; int head; int inputstate; struct cardstate* cs; } ;
struct cardstate {unsigned int cbytes; char* respdata; int dle; int dev; } ;


 int DEBUG_TRANSCMD ;

 int INS_DLE_char ;
 int INS_DLE_command ;
 int INS_command ;
 unsigned int MAX_RESP_SIZE ;
 int dev_warn (int ,char*,unsigned int) ;
 int gigaset_dbg_buffer (int ,char*,unsigned int,char*) ;
 int gigaset_handle_modem_response (struct cardstate*) ;

__attribute__((used)) static unsigned cmd_loop(unsigned numbytes, struct inbuf_t *inbuf)
{
 unsigned char *src = inbuf->data + inbuf->head;
 struct cardstate *cs = inbuf->cs;
 unsigned cbytes = cs->cbytes;
 unsigned procbytes = 0;
 unsigned char c;

 while (procbytes < numbytes) {
  c = *src++;
  procbytes++;

  switch (c) {
  case '\n':
   if (cbytes == 0 && cs->respdata[0] == '\r') {

    cs->respdata[0] = 0;
    break;
   }

  case '\r':

   if (cbytes >= MAX_RESP_SIZE) {
    dev_warn(cs->dev, "response too large (%d)\n",
      cbytes);
    cbytes = MAX_RESP_SIZE;
   }
   cs->cbytes = cbytes;
   gigaset_dbg_buffer(DEBUG_TRANSCMD, "received response",
        cbytes, cs->respdata);
   gigaset_handle_modem_response(cs);
   cbytes = 0;


   cs->respdata[0] = c;


   if (cs->dle && !(inbuf->inputstate & INS_DLE_command))
    inbuf->inputstate &= ~INS_command;


   goto exit;

  case 128:
   if (inbuf->inputstate & INS_DLE_char) {

    inbuf->inputstate &= ~INS_DLE_char;
   } else if (cs->dle ||
       (inbuf->inputstate & INS_DLE_command)) {

    inbuf->inputstate |= INS_DLE_char;
    goto exit;
   }


  default:

   if (cbytes < MAX_RESP_SIZE)
    cs->respdata[cbytes] = c;
   cbytes++;
  }
 }
exit:
 cs->cbytes = cbytes;
 return procbytes;
}
