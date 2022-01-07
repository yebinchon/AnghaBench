
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf_t {struct cardstate* cs; } ;
struct cardstate {unsigned int cbytes; char* respdata; int dev; } ;


 int DEBUG_TRANSCMD ;
 unsigned int MAX_RESP_SIZE ;
 int dev_warn (int ,char*,unsigned int) ;
 int gigaset_dbg_buffer (int ,char*,unsigned int,char*) ;
 int gigaset_handle_modem_response (struct cardstate*) ;

__attribute__((used)) static void cmd_loop(unsigned char *src, int numbytes, struct inbuf_t *inbuf)
{
 struct cardstate *cs = inbuf->cs;
 unsigned cbytes = cs->cbytes;
 unsigned char c;

 while (numbytes--) {
  c = *src++;
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
   break;
  default:

   if (cbytes < MAX_RESP_SIZE)
    cs->respdata[cbytes] = c;
   cbytes++;
  }
 }


 cs->cbytes = cbytes;
}
