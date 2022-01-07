
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i1480 {int (* read ) (struct i1480*,int,int) ;int dev; scalar_t__ cmd_buf; } ;


 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int ,int ) ;
 int stub1 (struct i1480*,int,int) ;

__attribute__((used)) static
int i1480_print_state(struct i1480 *i1480)
{
 int result;
 u32 *buf = (u32 *) i1480->cmd_buf;

 result = i1480->read(i1480, 0x80080000, 2 * sizeof(*buf));
 if (result < 0) {
  dev_err(i1480->dev, "cannot read U & L states: %d\n", result);
  goto error;
 }
 dev_info(i1480->dev, "state U 0x%08x, L 0x%08x\n", buf[0], buf[1]);
error:
 return result;
}
