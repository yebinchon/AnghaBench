
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int dummy; } ;
struct ccnt {unsigned int pos; unsigned int neg; int spos; int total_chg; int total_dischg; } ;


 int CCNT_NEG1 ;
 int CCNT_NEG2 ;
 int CCNT_POS1 ;
 int CCNT_POS2 ;
 int CCNT_SNEG ;
 int CCNT_SPOS ;
 int read_ccnt (struct pm860x_battery_info*,int ,int*) ;

__attribute__((used)) static int calc_ccnt(struct pm860x_battery_info *info, struct ccnt *ccnt)
{
 unsigned int sum;
 int ret;
 int data;

 ret = read_ccnt(info, CCNT_POS1, &data);
 if (ret)
  goto out;
 sum = data & 0xffff;
 ret = read_ccnt(info, CCNT_POS2, &data);
 if (ret)
  goto out;
 sum |= (data & 0xffff) << 16;
 ccnt->pos += sum;

 ret = read_ccnt(info, CCNT_NEG1, &data);
 if (ret)
  goto out;
 sum = data & 0xffff;
 ret = read_ccnt(info, CCNT_NEG2, &data);
 if (ret)
  goto out;
 sum |= (data & 0xffff) << 16;
 sum = ~sum + 1;
 ccnt->neg += sum;

 ret = read_ccnt(info, CCNT_SPOS, &data);
 if (ret)
  goto out;
 ccnt->spos += data;
 ret = read_ccnt(info, CCNT_SNEG, &data);
 if (ret)
  goto out;






 ccnt->total_chg = (int) ((ccnt->pos * 18236) >> 40);
 ccnt->total_dischg = (int) ((ccnt->neg * 18236) >> 40);
 return 0;
out:
 return ret;
}
