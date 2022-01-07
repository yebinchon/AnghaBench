
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct fwtty_port {int dummy; } ;


 int drain ;
 int fwtty_tx (struct fwtty_port*,int) ;
 int to_delayed_work (struct work_struct*) ;
 struct fwtty_port* to_port (int ,int ) ;

__attribute__((used)) static void fwtty_drain_tx(struct work_struct *work)
{
 struct fwtty_port *port = to_port(to_delayed_work(work), drain);

 fwtty_tx(port, 1);
}
