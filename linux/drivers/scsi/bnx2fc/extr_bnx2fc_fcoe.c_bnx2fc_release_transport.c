
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bnx2fc_transport_template ;
 int * bnx2fc_vport_xport_template ;
 int fc_release_transport (int *) ;

__attribute__((used)) static void bnx2fc_release_transport(void)
{
 fc_release_transport(bnx2fc_transport_template);
 fc_release_transport(bnx2fc_vport_xport_template);
 bnx2fc_transport_template = ((void*)0);
 bnx2fc_vport_xport_template = ((void*)0);
}
