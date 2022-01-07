
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct fcpio_tag {int dummy; } ;
struct fcpio_header {struct fcpio_tag tag; scalar_t__ _resvd; void* status; void* type; } ;



__attribute__((used)) static inline void
fcpio_header_enc(struct fcpio_header *hdr,
   u8 type, u8 status,
   struct fcpio_tag tag)
{
 hdr->type = type;
 hdr->status = status;
 hdr->_resvd = 0;
 hdr->tag = tag;
}
