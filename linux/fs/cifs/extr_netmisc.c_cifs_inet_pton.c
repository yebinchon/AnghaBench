
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const AF_INET ;
 int const AF_INET6 ;
 int NOISY ;
 int cifs_dbg (int ,char*,int,int,int,char const*) ;
 int in4_pton (char const*,int,void*,char,int *) ;
 int in6_pton (char const*,int,void*,char,int *) ;

__attribute__((used)) static int
cifs_inet_pton(const int address_family, const char *cp, int len, void *dst)
{
 int ret = 0;


 if (address_family == AF_INET)
  ret = in4_pton(cp, len, dst, '\\', ((void*)0));
 else if (address_family == AF_INET6)
  ret = in6_pton(cp, len, dst , '\\', ((void*)0));

 cifs_dbg(NOISY, "address conversion returned %d for %*.*s\n",
   ret, len, len, cp);
 if (ret > 0)
  ret = 1;
 return ret;
}
