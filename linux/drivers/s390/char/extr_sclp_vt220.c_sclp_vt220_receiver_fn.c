
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuf_header {int length; } ;
typedef scalar_t__ addr_t ;





 int sclp_vt220_handle_input (char*,unsigned int) ;
 int sclp_vt220_port ;
 int sclp_vt220_reset_session () ;
 int tty_flip_buffer_push (int *) ;

__attribute__((used)) static void
sclp_vt220_receiver_fn(struct evbuf_header *evbuf)
{
 char *buffer;
 unsigned int count;

 buffer = (char *) ((addr_t) evbuf + sizeof(struct evbuf_header));
 count = evbuf->length - sizeof(struct evbuf_header);

 switch (*buffer) {
 case 129:
 case 128:
  sclp_vt220_reset_session();
  break;
 case 130:

  buffer++;
  count--;
  sclp_vt220_handle_input(buffer, count);
  tty_flip_buffer_push(&sclp_vt220_port);
  break;
 }
}
