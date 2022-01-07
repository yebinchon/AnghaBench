
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct entry_header {int addr; } ;


 int cmd_db_get_header (char const*,struct entry_header const**,int *) ;
 int le32_to_cpu (int ) ;

u32 cmd_db_read_addr(const char *id)
{
 int ret;
 const struct entry_header *ent;

 ret = cmd_db_get_header(id, &ent, ((void*)0));

 return ret < 0 ? 0 : le32_to_cpu(ent->addr);
}
