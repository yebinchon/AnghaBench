
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct TCP_Server_Info {TYPE_1__ dstaddr; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ AF_INET6 ;
 int CIFS_PORT ;
 int RFC1001_PORT ;
 int generic_ip_connect (struct TCP_Server_Info*) ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static int
ip_connect(struct TCP_Server_Info *server)
{
 __be16 *sport;
 struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)&server->dstaddr;
 struct sockaddr_in *addr = (struct sockaddr_in *)&server->dstaddr;

 if (server->dstaddr.ss_family == AF_INET6)
  sport = &addr6->sin6_port;
 else
  sport = &addr->sin_port;

 if (*sport == 0) {
  int rc;


  *sport = htons(CIFS_PORT);

  rc = generic_ip_connect(server);
  if (rc >= 0)
   return rc;


  *sport = htons(RFC1001_PORT);
 }

 return generic_ip_connect(server);
}
