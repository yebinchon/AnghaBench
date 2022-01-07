
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASCEBC (char*,int) ;
 int EINVAL ;
 int IUCV_DBF_TEXT (int ,int,char*) ;
 int IUCV_DBF_TEXT_ (int ,int,char*,char const) ;
 scalar_t__ isalnum (char const) ;
 int iucvMagic_ascii ;
 int memcpy (char*,int ,int) ;
 int setup ;
 char* strchr (char const*,char) ;
 char toupper (char const) ;

__attribute__((used)) static int netiucv_check_user(const char *buf, size_t count, char *username,
         char *userdata)
{
 const char *p;
 int i;

 p = strchr(buf, '.');
 if ((p && ((count > 26) ||
     ((p - buf) > 8) ||
     (buf + count - p > 18))) ||
     (!p && (count > 9))) {
  IUCV_DBF_TEXT(setup, 2, "conn_write: too long\n");
  return -EINVAL;
 }

 for (i = 0, p = buf; i < 8 && *p && *p != '.'; i++, p++) {
  if (isalnum(*p) || *p == '$') {
   username[i] = toupper(*p);
   continue;
  }
  if (*p == '\n')

   break;
  IUCV_DBF_TEXT_(setup, 2,
          "conn_write: invalid character %02x\n", *p);
  return -EINVAL;
 }
 while (i < 8)
  username[i++] = ' ';
 username[8] = '\0';

 if (*p == '.') {
  p++;
  for (i = 0; i < 16 && *p; i++, p++) {
   if (*p == '\n')
    break;
   userdata[i] = toupper(*p);
  }
  while (i > 0 && i < 16)
   userdata[i++] = ' ';
 } else
  memcpy(userdata, iucvMagic_ascii, 16);
 userdata[16] = '\0';
 ASCEBC(userdata, 16);

 return 0;
}
