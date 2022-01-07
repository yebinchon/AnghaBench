
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNIC_DESC_LOGGING ;
 int snic_dump_desc (char const*,char*,int) ;
 int snic_log_level ;

void
snic_print_desc(const char *fn, char *os_buf, int len)
{
 if (snic_log_level & SNIC_DESC_LOGGING)
  snic_dump_desc(fn, os_buf, len);
}
