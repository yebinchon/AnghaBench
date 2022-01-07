
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf_t {unsigned char* data; int head; int cs; } ;


 int DEBUG_LOCKCMD ;
 int gigaset_dbg_buffer (int ,char*,unsigned int,unsigned char*) ;
 int gigaset_if_receive (int ,unsigned char*,unsigned int) ;

__attribute__((used)) static unsigned lock_loop(unsigned numbytes, struct inbuf_t *inbuf)
{
 unsigned char *src = inbuf->data + inbuf->head;

 gigaset_dbg_buffer(DEBUG_LOCKCMD, "received response", numbytes, src);
 gigaset_if_receive(inbuf->cs, src, numbytes);
 return numbytes;
}
