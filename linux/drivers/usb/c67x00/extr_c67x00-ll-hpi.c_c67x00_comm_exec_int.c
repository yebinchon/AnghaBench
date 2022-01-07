
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct c67x00_lcp_int_data {int * regs; } ;
struct TYPE_3__ {int mutex; } ;
struct TYPE_4__ {TYPE_1__ lcp; } ;
struct c67x00_device {TYPE_2__ hpi; } ;


 int COMM_EXEC_INT ;
 int COMM_INT_NUM ;
 int COMM_R (int) ;
 int COMM_REGS ;
 int hpi_send_mbox (struct c67x00_device*,int ) ;
 int hpi_write_word (struct c67x00_device*,int ,int ) ;
 int ll_recv_msg (struct c67x00_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int c67x00_comm_exec_int(struct c67x00_device *dev, u16 nr,
    struct c67x00_lcp_int_data *data)
{
 int i, rc;

 mutex_lock(&dev->hpi.lcp.mutex);
 hpi_write_word(dev, COMM_INT_NUM, nr);
 for (i = 0; i < COMM_REGS; i++)
  hpi_write_word(dev, COMM_R(i), data->regs[i]);
 hpi_send_mbox(dev, COMM_EXEC_INT);
 rc = ll_recv_msg(dev);
 mutex_unlock(&dev->hpi.lcp.mutex);

 return rc;
}
