
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmcdrv_ftp_cmdspec {scalar_t__ id; char* fname; } ;


 int EINVAL ;
 scalar_t__ HMCDRV_FTP_NOOP ;
 scalar_t__ hmcdrv_ftp_cmd_getid (char*,int) ;
 int iscntrl (char) ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static int hmcdrv_ftp_parse(char *cmd, struct hmcdrv_ftp_cmdspec *ftp)
{
 char *start;
 int argc = 0;

 ftp->id = HMCDRV_FTP_NOOP;
 ftp->fname = ((void*)0);

 while (*cmd != '\0') {

  while (isspace(*cmd))
   ++cmd;

  if (*cmd == '\0')
   break;

  start = cmd;

  switch (argc) {
  case 0:
   while ((*cmd != '\0') && !isspace(*cmd))
    ++cmd;
   ftp->id = hmcdrv_ftp_cmd_getid(start, cmd - start);
   break;
  case 1:
   while ((*cmd != '\0') && !iscntrl(*cmd))
    ++cmd;
   ftp->fname = start;

  default:
   *cmd = '\0';
   break;
  }

  ++argc;
 }

 if (!ftp->fname || (ftp->id == HMCDRV_FTP_NOOP))
  return -EINVAL;

 return 0;
}
