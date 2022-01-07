
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin_port; } ;
struct cxgbi_sock {TYPE_1__ daddr; } ;


 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int ntohs (int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static inline int csk_print_port(struct cxgbi_sock *csk, char *buf)
{
 int len;

 cxgbi_sock_get(csk);
 len = sprintf(buf, "%hu\n", ntohs(csk->daddr.sin_port));
 cxgbi_sock_put(csk);

 return len;
}
