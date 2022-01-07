
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 size_t EINVAL ;
 int pr_err (char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static ssize_t target_check_inquiry_data(char *buf)
{
 size_t len;
 int i;

 len = strlen(buf);







 for (i = 0; i < len; i++) {
  if (buf[i] < 0x20 || buf[i] > 0x7E) {
   pr_err("Emulated T10 Inquiry Data contains non-ASCII-printable characters\n");
   return -EINVAL;
  }
 }

 return len;
}
