
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef void* u32 ;
struct zd_chip {int dummy; } ;
struct aw_pt_bi {void* beacon_interval; void* pre_tbtt; void* atim_wnd_period; } ;


 int ARRAY_SIZE (int const*) ;



 int memset (struct aw_pt_bi*,int ,int) ;
 int zd_ioread32v_locked (struct zd_chip*,void**,int const*,int ) ;

__attribute__((used)) static int get_aw_pt_bi(struct zd_chip *chip, struct aw_pt_bi *s)
{
 int r;
 static const zd_addr_t aw_pt_bi_addr[] =
  { 130, 128, 129 };
 u32 values[3];

 r = zd_ioread32v_locked(chip, values, (const zd_addr_t *)aw_pt_bi_addr,
           ARRAY_SIZE(aw_pt_bi_addr));
 if (r) {
  memset(s, 0, sizeof(*s));
  return r;
 }

 s->atim_wnd_period = values[0];
 s->pre_tbtt = values[1];
 s->beacon_interval = values[2];
 return 0;
}
