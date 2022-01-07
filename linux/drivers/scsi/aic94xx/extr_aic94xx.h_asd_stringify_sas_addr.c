
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SAS_ADDR_SIZE ;
 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static inline void asd_stringify_sas_addr(char *p, const u8 *sas_addr)
{
 int i;
 for (i = 0; i < SAS_ADDR_SIZE; i++, p += 2)
  snprintf(p, 3, "%02X", sas_addr[i]);
 *p = '\0';
}
