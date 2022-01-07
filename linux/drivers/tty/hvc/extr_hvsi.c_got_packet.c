
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hvsi_struct {int * inbuf_end; } ;
struct hvsi_header {int dummy; } ;


 int len_packet (int *) ;

__attribute__((used)) static inline int got_packet(const struct hvsi_struct *hp, uint8_t *packet)
{
 if (hp->inbuf_end < packet + sizeof(struct hvsi_header))
  return 0;

 if (hp->inbuf_end < (packet + len_packet(packet)))
  return 0;

 return 1;
}
