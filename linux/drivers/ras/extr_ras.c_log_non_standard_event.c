
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int guid_t ;


 int trace_non_standard_event (int const*,int const*,char const*,int const,int const*,int const) ;

void log_non_standard_event(const guid_t *sec_type, const guid_t *fru_id,
       const char *fru_text, const u8 sev, const u8 *err,
       const u32 len)
{
 trace_non_standard_event(sec_type, fru_id, fru_text, sev, err, len);
}
