
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_np {scalar_t__ np_socket; } ;


 int sock_release (scalar_t__) ;

__attribute__((used)) static void iscsit_free_np(struct iscsi_np *np)
{
 if (np->np_socket)
  sock_release(np->np_socket);
}
