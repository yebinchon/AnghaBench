
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int FILTER_WILDCARD_CHAR ;
 char* hvc_iucv_filter ;
 size_t hvc_iucv_filter_size ;
 scalar_t__ memcmp (int *,char const*,size_t) ;
 char* strnchr (char const*,int,int ) ;

__attribute__((used)) static int hvc_iucv_filter_connreq(u8 ipvmid[8])
{
 const char *wildcard, *filter_entry;
 size_t i, len;


 if (!hvc_iucv_filter_size)
  return 0;

 for (i = 0; i < hvc_iucv_filter_size; i++) {
  filter_entry = hvc_iucv_filter + (8 * i);






  wildcard = strnchr(filter_entry, 8, FILTER_WILDCARD_CHAR);
  len = (wildcard) ? wildcard - filter_entry : 8;
  if (0 == memcmp(ipvmid, filter_entry, len))
   return 0;
 }
 return 1;
}
