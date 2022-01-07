
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connection {int sock; } ;
typedef int localaddr ;


 int SCTP_SOCKOPT_BINDX_ADD ;
 int SOL_SCTP ;
 int * dlm_local_addr ;
 int dlm_local_count ;
 int kernel_bind (int ,struct sockaddr*,int) ;
 int kernel_setsockopt (int ,int ,int ,char*,int) ;
 int log_print (char*,int ,int,int) ;
 int make_sockaddr (struct sockaddr_storage*,int ,int*) ;
 int memcpy (struct sockaddr_storage*,int ,int) ;

__attribute__((used)) static int sctp_bind_addrs(struct connection *con, uint16_t port)
{
 struct sockaddr_storage localaddr;
 int i, addr_len, result = 0;

 for (i = 0; i < dlm_local_count; i++) {
  memcpy(&localaddr, dlm_local_addr[i], sizeof(localaddr));
  make_sockaddr(&localaddr, port, &addr_len);

  if (!i)
   result = kernel_bind(con->sock,
          (struct sockaddr *)&localaddr,
          addr_len);
  else
   result = kernel_setsockopt(con->sock, SOL_SCTP,
         SCTP_SOCKOPT_BINDX_ADD,
         (char *)&localaddr, addr_len);

  if (result < 0) {
   log_print("Can't bind to %d addr number %d, %d.\n",
      port, i + 1, result);
   break;
  }
 }
 return result;
}
