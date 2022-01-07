
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc_hdr {int dummy; } ;
struct entry_header {int len; } ;


 void const* ERR_PTR (int) ;
 int cmd_db_get_header (char const*,struct entry_header const**,struct rsc_hdr const**) ;
 size_t le16_to_cpu (int ) ;
 void const* rsc_offset (struct rsc_hdr const*,struct entry_header const*) ;

const void *cmd_db_read_aux_data(const char *id, size_t *len)
{
 int ret;
 const struct entry_header *ent;
 const struct rsc_hdr *rsc_hdr;

 ret = cmd_db_get_header(id, &ent, &rsc_hdr);
 if (ret)
  return ERR_PTR(ret);

 if (len)
  *len = le16_to_cpu(ent->len);

 return rsc_offset(rsc_hdr, ent);
}
