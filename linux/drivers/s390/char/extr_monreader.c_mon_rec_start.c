
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mon_msg {scalar_t__ mca_offset; } ;


 scalar_t__ mon_mca_start (struct mon_msg*) ;

__attribute__((used)) static inline u32 mon_rec_start(struct mon_msg *monmsg)
{
 return *((u32 *) (mon_mca_start(monmsg) + monmsg->mca_offset + 4));
}
