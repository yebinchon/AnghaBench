
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uwb_rceb {int wEvent; int bEventType; } ;
struct uwb_rccb {int bCommandContext; } ;
struct i1480 {size_t (* cmd ) (struct i1480*,char const*,size_t) ;size_t (* wait_init_done ) (struct i1480*) ;struct uwb_rceb* evt_buf; int dev; int evt_result; int evt_complete; struct uwb_rccb* cmd_buf; } ;
typedef size_t ssize_t ;


 int EINPROGRESS ;
 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 int dev_err (int ,char*,char const*,size_t,...) ;
 int get_random_bytes (int*,int) ;
 size_t i1480_rceb_check (struct i1480*,struct uwb_rceb*,char const*,int,int,int) ;
 int init_completion (int *) ;
 size_t stub1 (struct i1480*,char const*,size_t) ;
 size_t stub2 (struct i1480*) ;
 size_t wait_for_completion_interruptible_timeout (int *,int ) ;

ssize_t i1480_cmd(struct i1480 *i1480, const char *cmd_name, size_t cmd_size,
    size_t reply_size)
{
 ssize_t result;
 struct uwb_rceb *reply = i1480->evt_buf;
 struct uwb_rccb *cmd = i1480->cmd_buf;
 u16 expected_event = reply->wEvent;
 u8 expected_type = reply->bEventType;
 u8 context;

 init_completion(&i1480->evt_complete);
 i1480->evt_result = -EINPROGRESS;
 do {
  get_random_bytes(&context, 1);
 } while (context == 0x00 || context == 0xff);
 cmd->bCommandContext = context;
 result = i1480->cmd(i1480, cmd_name, cmd_size);
 if (result < 0)
  goto error;

 result = wait_for_completion_interruptible_timeout(
  &i1480->evt_complete, HZ);
 if (result == 0) {
  result = -ETIMEDOUT;
  goto error;
 }
 if (result < 0)
  goto error;
 result = i1480->evt_result;
 if (result < 0) {
  dev_err(i1480->dev, "%s: command reply reception failed: %zd\n",
   cmd_name, result);
  goto error;
 }






 if (i1480_rceb_check(i1480, i1480->evt_buf, ((void*)0),
        0, 0xfd, 0x0022) == 0) {

  result = i1480->wait_init_done(i1480);
  if (result < 0)
   goto error;
  result = i1480->evt_result;
 }
 if (result != reply_size) {
  dev_err(i1480->dev, "%s returned only %zu bytes, %zu expected\n",
   cmd_name, result, reply_size);
  result = -EINVAL;
  goto error;
 }

 result = i1480_rceb_check(i1480, i1480->evt_buf, cmd_name, context,
      expected_type, expected_event);
error:
 return result;
}
