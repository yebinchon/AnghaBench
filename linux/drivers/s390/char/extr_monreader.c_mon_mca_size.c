
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mon_msg {int dummy; } ;


 scalar_t__ mon_mca_end (struct mon_msg*) ;
 scalar_t__ mon_mca_start (struct mon_msg*) ;

__attribute__((used)) static inline u32 mon_mca_size(struct mon_msg *monmsg)
{
 return mon_mca_end(monmsg) - mon_mca_start(monmsg) + 1;
}
