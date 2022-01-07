
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdomain {int dummy; } ;


 int start_handshake (struct tb_xdomain*) ;

void tb_xdomain_add(struct tb_xdomain *xd)
{

 start_handshake(xd);
}
