
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {struct serdev_controller* client_data; } ;
struct serport {int flags; } ;
struct serdev_controller {int dev; } ;


 int SERPORT_ACTIVE ;
 int dev_WARN_ONCE (int *,int,char*,int,size_t) ;
 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int serdev_controller_receive_buf (struct serdev_controller*,unsigned char const*,size_t) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ttyport_receive_buf(struct tty_port *port, const unsigned char *cp,
    const unsigned char *fp, size_t count)
{
 struct serdev_controller *ctrl = port->client_data;
 struct serport *serport = serdev_controller_get_drvdata(ctrl);
 int ret;

 if (!test_bit(SERPORT_ACTIVE, &serport->flags))
  return 0;

 ret = serdev_controller_receive_buf(ctrl, cp, count);

 dev_WARN_ONCE(&ctrl->dev, ret < 0 || ret > count,
    "receive_buf returns %d (count = %zu)\n",
    ret, count);
 if (ret < 0)
  return 0;
 else if (ret > count)
  return count;

 return ret;
}
