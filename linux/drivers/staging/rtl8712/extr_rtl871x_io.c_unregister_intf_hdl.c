
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intf_hdl {int pintfpriv; } ;


 int _unload_intf_hdl (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void unregister_intf_hdl(struct intf_hdl *pintfhdl)
{
 _unload_intf_hdl(pintfhdl->pintfpriv);
 memset((u8 *)pintfhdl, 0, sizeof(struct intf_hdl));
}
