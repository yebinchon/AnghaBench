
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct DeviceCtlBlk {int dummy; } ;
struct AdapterCtlBlk {struct DeviceCtlBlk*** children; } ;



__attribute__((used)) static struct DeviceCtlBlk *find_dcb(struct AdapterCtlBlk *acb, u8 id, u8 lun)
{
 return acb->children[id][lun];
}
