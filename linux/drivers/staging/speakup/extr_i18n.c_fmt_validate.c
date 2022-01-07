
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compare_specifiers (char**,char**) ;
 char* next_specifier (char*) ;

__attribute__((used)) static bool fmt_validate(char *template, char *user)
{
 bool valid = 1;
 bool still_comparing = 1;
 char *template_ptr = template;
 char *user_ptr = user;

 while (still_comparing && valid) {
  template_ptr = next_specifier(template_ptr);
  user_ptr = next_specifier(user_ptr);
  if (template_ptr && user_ptr) {

   valid = compare_specifiers(&template_ptr, &user_ptr);
  } else {

   still_comparing = 0;

   if (template_ptr || user_ptr)
    valid = 0;
  }
 }
 return valid;
}
