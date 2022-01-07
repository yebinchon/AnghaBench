
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int dlm_our_nodeid () ;
 int lowcomms_connect_sock (struct connection*) ;
 struct connection* nodeid2con (int,int ) ;

int dlm_lowcomms_connect_node(int nodeid)
{
 struct connection *con;

 if (nodeid == dlm_our_nodeid())
  return 0;

 con = nodeid2con(nodeid, GFP_NOFS);
 if (!con)
  return -ENOMEM;
 lowcomms_connect_sock(con);
 return 0;
}
