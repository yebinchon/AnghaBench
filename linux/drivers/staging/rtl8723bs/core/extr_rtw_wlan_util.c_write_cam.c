
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int _write_cam (struct adapter*,int ,int ,int *,int *) ;
 int write_cam_cache (struct adapter*,int ,int ,int *,int *) ;

inline void write_cam(struct adapter *adapter, u8 id, u16 ctrl, u8 *mac, u8 *key)
{
 _write_cam(adapter, id, ctrl, mac, key);
 write_cam_cache(adapter, id, ctrl, mac, key);
}
