
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int val ;
struct socket {TYPE_3__* ops; TYPE_2__* sk; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int ss_family; } ;
struct TCP_Server_Info {struct socket* ssocket; scalar_t__ noblockcnt; scalar_t__ tcp_nodelay; scalar_t__ noautotune; TYPE_1__ dstaddr; } ;
typedef scalar_t__ __be16 ;
struct TYPE_6__ {int (* connect ) (struct socket*,struct sockaddr*,int,int ) ;} ;
struct TYPE_5__ {int sk_rcvtimeo; int sk_sndtimeo; int sk_sndbuf; int sk_rcvbuf; int sk_allocation; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EINPROGRESS ;
 int FYI ;
 int GFP_NOFS ;
 int HZ ;
 int IPPROTO_TCP ;
 int O_NONBLOCK ;
 int RFC1001_PORT ;
 int SOCK_STREAM ;
 int SOL_TCP ;
 int TCP_NODELAY ;
 int VFS ;
 int __sock_create (int ,int,int ,int ,struct socket**,int) ;
 int bind_socket (struct TCP_Server_Info*) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_net_ns (struct TCP_Server_Info*) ;
 int cifs_reclassify_socket4 (struct socket*) ;
 int cifs_reclassify_socket6 (struct socket*) ;
 int cifs_server_dbg (int ,char*,int) ;
 scalar_t__ htons (int ) ;
 int ip_rfc1001_connect (struct TCP_Server_Info*) ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct sockaddr*,int,int ) ;

__attribute__((used)) static int
generic_ip_connect(struct TCP_Server_Info *server)
{
 int rc = 0;
 __be16 sport;
 int slen, sfamily;
 struct socket *socket = server->ssocket;
 struct sockaddr *saddr;

 saddr = (struct sockaddr *) &server->dstaddr;

 if (server->dstaddr.ss_family == AF_INET6) {
  sport = ((struct sockaddr_in6 *) saddr)->sin6_port;
  slen = sizeof(struct sockaddr_in6);
  sfamily = AF_INET6;
 } else {
  sport = ((struct sockaddr_in *) saddr)->sin_port;
  slen = sizeof(struct sockaddr_in);
  sfamily = AF_INET;
 }

 if (socket == ((void*)0)) {
  rc = __sock_create(cifs_net_ns(server), sfamily, SOCK_STREAM,
       IPPROTO_TCP, &socket, 1);
  if (rc < 0) {
   cifs_server_dbg(VFS, "Error %d creating socket\n", rc);
   server->ssocket = ((void*)0);
   return rc;
  }


  cifs_dbg(FYI, "Socket created\n");
  server->ssocket = socket;
  socket->sk->sk_allocation = GFP_NOFS;
  if (sfamily == AF_INET6)
   cifs_reclassify_socket6(socket);
  else
   cifs_reclassify_socket4(socket);
 }

 rc = bind_socket(server);
 if (rc < 0)
  return rc;






 socket->sk->sk_rcvtimeo = 7 * HZ;
 socket->sk->sk_sndtimeo = 5 * HZ;


 if (server->noautotune) {
  if (socket->sk->sk_sndbuf < (200 * 1024))
   socket->sk->sk_sndbuf = 200 * 1024;
  if (socket->sk->sk_rcvbuf < (140 * 1024))
   socket->sk->sk_rcvbuf = 140 * 1024;
 }

 if (server->tcp_nodelay) {
  int val = 1;
  rc = kernel_setsockopt(socket, SOL_TCP, TCP_NODELAY,
    (char *)&val, sizeof(val));
  if (rc)
   cifs_dbg(FYI, "set TCP_NODELAY socket option error %d\n",
     rc);
 }

 cifs_dbg(FYI, "sndbuf %d rcvbuf %d rcvtimeo 0x%lx\n",
   socket->sk->sk_sndbuf,
   socket->sk->sk_rcvbuf, socket->sk->sk_rcvtimeo);

 rc = socket->ops->connect(socket, saddr, slen,
      server->noblockcnt ? O_NONBLOCK : 0);





 if (server->noblockcnt && rc == -EINPROGRESS)
  rc = 0;
 if (rc < 0) {
  cifs_dbg(FYI, "Error %d connecting to server\n", rc);
  sock_release(socket);
  server->ssocket = ((void*)0);
  return rc;
 }

 if (sport == htons(RFC1001_PORT))
  rc = ip_rfc1001_connect(server);

 return rc;
}
