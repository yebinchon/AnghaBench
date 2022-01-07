
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_NONE ;
 int SNIC_INFO (char*,char*,int) ;
 int print_hex_dump_bytes (char*,int ,char*,int) ;

void
snic_hex_dump(char *pfx, char *data, int len)
{
 SNIC_INFO("%s Dumping Data of Len = %d\n", pfx, len);
 print_hex_dump_bytes(pfx, DUMP_PREFIX_NONE, data, len);
}
