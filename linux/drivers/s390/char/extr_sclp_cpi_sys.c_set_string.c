
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CPI_LENGTH_NAME ;
 size_t strlen (char const*) ;
 char toupper (char const) ;

__attribute__((used)) static void set_string(char *attr, const char *value)
{
 size_t len;
 size_t i;

 len = strlen(value);

 if ((len > 0) && (value[len - 1] == '\n'))
  len--;

 for (i = 0; i < CPI_LENGTH_NAME; i++) {
  if (i < len)
   attr[i] = toupper(value[i]);
  else
   attr[i] = ' ';
 }
}
