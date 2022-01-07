
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hvsi_header {scalar_t__ len; } ;



__attribute__((used)) static inline int len_packet(const uint8_t *packet)
{
 return (int)((struct hvsi_header *)packet)->len;
}
