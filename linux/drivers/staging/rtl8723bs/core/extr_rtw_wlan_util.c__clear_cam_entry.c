
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int _write_cam (struct adapter*,int ,int ,unsigned char*,unsigned char*) ;

void _clear_cam_entry(struct adapter *padapter, u8 entry)
{
 unsigned char null_sta[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
 unsigned char null_key[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

 _write_cam(padapter, entry, 0, null_sta, null_key);
}
