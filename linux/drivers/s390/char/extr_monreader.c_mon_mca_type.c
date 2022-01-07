
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mon_msg {int mca_offset; } ;


 scalar_t__ mon_mca_start (struct mon_msg*) ;

__attribute__((used)) static inline u8 mon_mca_type(struct mon_msg *monmsg, u8 index)
{
 return *((u8 *) mon_mca_start(monmsg) + monmsg->mca_offset + index);
}
