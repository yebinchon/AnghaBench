
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rsc_hdr {int cnt; int slv_id; } ;
struct entry_header {int id; } ;
typedef int query ;
struct TYPE_2__ {struct rsc_hdr* header; } ;


 int ENODEV ;
 int MAX_SLV_ID ;
 TYPE_1__* cmd_db_header ;
 int cmd_db_ready () ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int *,int) ;
 struct entry_header* rsc_to_entry_header (struct rsc_hdr const*) ;
 int strncpy (int *,char const*,int) ;

__attribute__((used)) static int cmd_db_get_header(const char *id, const struct entry_header **eh,
        const struct rsc_hdr **rh)
{
 const struct rsc_hdr *rsc_hdr;
 const struct entry_header *ent;
 int ret, i, j;
 u8 query[8];

 ret = cmd_db_ready();
 if (ret)
  return ret;


 strncpy(query, id, sizeof(query));

 for (i = 0; i < MAX_SLV_ID; i++) {
  rsc_hdr = &cmd_db_header->header[i];
  if (!rsc_hdr->slv_id)
   break;

  ent = rsc_to_entry_header(rsc_hdr);
  for (j = 0; j < le16_to_cpu(rsc_hdr->cnt); j++, ent++) {
   if (memcmp(ent->id, query, sizeof(ent->id)) == 0) {
    if (eh)
     *eh = ent;
    if (rh)
     *rh = rsc_hdr;
    return 0;
   }
  }
 }

 return -ENODEV;
}
