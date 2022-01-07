
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 char* con_write_page ;

__attribute__((used)) static int fill_con_write_page(const char *s, unsigned int n,
          unsigned long *page_bytes)
{
 const char *orig_s = s;
 char *p = con_write_page;
 int left = PAGE_SIZE;

 while (n--) {
  if (*s == '\n') {
   if (left < 2)
    break;
   *p++ = '\r';
   left--;
  } else if (left < 1)
   break;
  *p++ = *s++;
  left--;
 }
 *page_bytes = p - con_write_page;
 return s - orig_s;
}
