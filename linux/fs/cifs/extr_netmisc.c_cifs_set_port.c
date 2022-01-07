
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int sa_family; } ;




 void* htons (unsigned short const) ;

void
cifs_set_port(struct sockaddr *addr, const unsigned short int port)
{
 switch (addr->sa_family) {
 case 129:
  ((struct sockaddr_in *)addr)->sin_port = htons(port);
  break;
 case 128:
  ((struct sockaddr_in6 *)addr)->sin6_port = htons(port);
  break;
 }
}
