
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hvsi_header {int len; int seqno; int type; } ;


 int dump_hex (int *,int ) ;
 int printk (char*,int ,int ,int ) ;

__attribute__((used)) static void dump_packet(uint8_t *packet)
{
 struct hvsi_header *header = (struct hvsi_header *)packet;

 printk("type 0x%x, len %i, seqno %i:\n", header->type, header->len,
   header->seqno);

 dump_hex(packet, header->len);
}
