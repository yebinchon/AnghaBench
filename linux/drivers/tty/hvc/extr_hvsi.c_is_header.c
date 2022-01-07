
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hvsi_header {scalar_t__ type; } ;


 scalar_t__ VS_QUERY_RESPONSE_PACKET_HEADER ;

__attribute__((used)) static inline int is_header(const uint8_t *packet)
{
 struct hvsi_header *header = (struct hvsi_header *)packet;
 return header->type >= VS_QUERY_RESPONSE_PACKET_HEADER;
}
