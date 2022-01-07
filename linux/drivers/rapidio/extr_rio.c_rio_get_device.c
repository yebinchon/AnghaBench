
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_dev {int dummy; } ;


 int RIO_ANY_ID ;
 struct rio_dev* rio_get_asm (int ,int ,int ,int ,struct rio_dev*) ;

struct rio_dev *rio_get_device(u16 vid, u16 did, struct rio_dev *from)
{
 return rio_get_asm(vid, did, RIO_ANY_ID, RIO_ANY_ID, from);
}
