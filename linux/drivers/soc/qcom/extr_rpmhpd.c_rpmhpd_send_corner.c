
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_cmd {unsigned int data; int addr; } ;
struct rpmhpd {int dev; int addr; } ;


 int rpmh_write (int ,int,struct tcs_cmd*,int) ;
 int rpmh_write_async (int ,int,struct tcs_cmd*,int) ;

__attribute__((used)) static int rpmhpd_send_corner(struct rpmhpd *pd, int state,
         unsigned int corner, bool sync)
{
 struct tcs_cmd cmd = {
  .addr = pd->addr,
  .data = corner,
 };





 if (sync)
  return rpmh_write(pd->dev, state, &cmd, 1);
 else
  return rpmh_write_async(pd->dev, state, &cmd, 1);
}
