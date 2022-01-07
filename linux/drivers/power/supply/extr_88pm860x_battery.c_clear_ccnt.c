
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int dummy; } ;
struct ccnt {int dummy; } ;


 int CCNT_NEG1 ;
 int CCNT_NEG2 ;
 int CCNT_POS1 ;
 int CCNT_POS2 ;
 int CCNT_SNEG ;
 int CCNT_SPOS ;
 int memset (struct ccnt*,int ,int) ;
 int read_ccnt (struct pm860x_battery_info*,int ,int*) ;

__attribute__((used)) static int clear_ccnt(struct pm860x_battery_info *info, struct ccnt *ccnt)
{
 int data;

 memset(ccnt, 0, sizeof(*ccnt));

 read_ccnt(info, CCNT_POS1, &data);
 read_ccnt(info, CCNT_POS2, &data);
 read_ccnt(info, CCNT_NEG1, &data);
 read_ccnt(info, CCNT_NEG2, &data);
 read_ccnt(info, CCNT_SPOS, &data);
 read_ccnt(info, CCNT_SNEG, &data);
 return 0;
}
