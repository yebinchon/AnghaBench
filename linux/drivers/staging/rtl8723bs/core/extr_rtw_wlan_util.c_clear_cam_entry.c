
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int _clear_cam_entry (struct adapter*,int ) ;
 int clear_cam_cache (struct adapter*,int ) ;

inline void clear_cam_entry(struct adapter *adapter, u8 id)
{
 _clear_cam_entry(adapter, id);
 clear_cam_cache(adapter, id);
}
