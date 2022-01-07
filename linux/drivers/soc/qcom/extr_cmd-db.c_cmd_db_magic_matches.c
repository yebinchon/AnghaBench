
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cmd_db_header {int * magic; } ;


 int ARRAY_SIZE (int ) ;
 int CMD_DB_MAGIC ;
 scalar_t__ memcmp (int const*,int ,int ) ;

__attribute__((used)) static bool cmd_db_magic_matches(const struct cmd_db_header *header)
{
 const u8 *magic = header->magic;

 return memcmp(magic, CMD_DB_MAGIC, ARRAY_SIZE(CMD_DB_MAGIC)) == 0;
}
