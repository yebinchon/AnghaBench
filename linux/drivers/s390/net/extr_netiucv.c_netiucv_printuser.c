
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iucv_connection {char* userdata; char* userid; } ;


 int EBCASC (char*,int) ;
 int iucvMagic_ebcdic ;
 scalar_t__ memcmp (char*,int ,int) ;
 int memcpy (char*,char*,int) ;
 char* netiucv_printname (char*,int) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static char *netiucv_printuser(struct iucv_connection *conn)
{
 static char tmp_uid[9];
 static char tmp_udat[17];
 static char buf[100];

 if (memcmp(conn->userdata, iucvMagic_ebcdic, 16)) {
  tmp_uid[8] = '\0';
  tmp_udat[16] = '\0';
  memcpy(tmp_uid, netiucv_printname(conn->userid, 8), 8);
  memcpy(tmp_udat, conn->userdata, 16);
  EBCASC(tmp_udat, 16);
  memcpy(tmp_udat, netiucv_printname(tmp_udat, 16), 16);
  sprintf(buf, "%s.%s", tmp_uid, tmp_udat);
  return buf;
 } else
  return netiucv_printname(conn->userid, 8);
}
