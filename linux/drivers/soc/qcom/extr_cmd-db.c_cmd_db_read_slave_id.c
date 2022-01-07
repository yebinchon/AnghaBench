
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct entry_header {int addr; } ;
typedef enum cmd_db_hw_type { ____Placeholder_cmd_db_hw_type } cmd_db_hw_type ;


 int CMD_DB_HW_INVALID ;
 int SLAVE_ID_MASK ;
 int SLAVE_ID_SHIFT ;
 int cmd_db_get_header (char const*,struct entry_header const**,int *) ;
 int le32_to_cpu (int ) ;

enum cmd_db_hw_type cmd_db_read_slave_id(const char *id)
{
 int ret;
 const struct entry_header *ent;
 u32 addr;

 ret = cmd_db_get_header(id, &ent, ((void*)0));
 if (ret < 0)
  return CMD_DB_HW_INVALID;

 addr = le32_to_cpu(ent->addr);
 return (addr >> SLAVE_ID_SHIFT) & SLAVE_ID_MASK;
}
