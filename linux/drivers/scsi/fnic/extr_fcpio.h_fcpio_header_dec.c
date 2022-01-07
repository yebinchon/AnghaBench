
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fcpio_tag {int dummy; } ;
struct fcpio_header {struct fcpio_tag tag; int status; int type; } ;



__attribute__((used)) static inline void
fcpio_header_dec(struct fcpio_header *hdr,
   u8 *type, u8 *status,
   struct fcpio_tag *tag)
{
 *type = hdr->type;
 *status = hdr->status;
 *tag = hdr->tag;
}
