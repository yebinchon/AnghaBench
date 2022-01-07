
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*) ;
 char* strchr (char*,char) ;

int iscsi_extract_key_value(char *textbuf, char **key, char **value)
{
 *value = strchr(textbuf, '=');
 if (!*value) {
  pr_err("Unable to locate \"=\" separator for key,"
    " ignoring request.\n");
  return -1;
 }

 *key = textbuf;
 **value = '\0';
 *value = *value + 1;

 return 0;
}
