
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_EXCL ;



 int P9_OAPPEND ;
 int P9_OEXCL ;
 int P9_ORDWR ;
 int P9_OREAD ;
 int P9_OWRITE ;

int v9fs_uflags2omode(int uflags, int extended)
{
 int ret;

 ret = 0;
 switch (uflags&3) {
 default:
 case 130:
  ret = P9_OREAD;
  break;

 case 128:
  ret = P9_OWRITE;
  break;

 case 129:
  ret = P9_ORDWR;
  break;
 }

 if (extended) {
  if (uflags & O_EXCL)
   ret |= P9_OEXCL;

  if (uflags & O_APPEND)
   ret |= P9_OAPPEND;
 }

 return ret;
}
