
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_msit_ctx {int ntb; } ;


 int ntb_port_number (int ) ;

__attribute__((used)) static int ntb_msit_dbgfs_local_port_get(void *data, u64 *port)
{
 struct ntb_msit_ctx *nm = data;

 *port = ntb_port_number(nm->ntb);

 return 0;
}
