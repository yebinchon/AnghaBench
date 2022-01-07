
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_buf {struct adapter* adapter; int recvbuf_lock; int list; } ;
struct adapter {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void initrecvbuf(struct recv_buf *precvbuf, struct adapter *padapter)
{
 INIT_LIST_HEAD(&precvbuf->list);
 spin_lock_init(&precvbuf->recvbuf_lock);

 precvbuf->adapter = padapter;
}
