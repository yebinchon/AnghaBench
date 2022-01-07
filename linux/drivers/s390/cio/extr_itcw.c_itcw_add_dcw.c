
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct itcw {int tcw; } ;
struct dcw {int dummy; } ;


 int TCCB_MAX_SIZE ;
 struct dcw* tccb_add_dcw (int ,int ,int ,int ,void*,int ,int ) ;
 int tcw_get_tccb (int ) ;

struct dcw *itcw_add_dcw(struct itcw *itcw, u8 cmd, u8 flags, void *cd,
    u8 cd_count, u32 count)
{
 return tccb_add_dcw(tcw_get_tccb(itcw->tcw), TCCB_MAX_SIZE, cmd,
       flags, cd, cd_count, count);
}
