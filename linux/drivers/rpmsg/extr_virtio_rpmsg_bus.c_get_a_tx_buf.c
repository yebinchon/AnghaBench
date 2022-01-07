
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtproc_info {int last_sbuf; int num_bufs; int buf_size; int tx_lock; int svq; void* sbufs; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* virtqueue_get_buf (int ,unsigned int*) ;

__attribute__((used)) static void *get_a_tx_buf(struct virtproc_info *vrp)
{
 unsigned int len;
 void *ret;


 mutex_lock(&vrp->tx_lock);





 if (vrp->last_sbuf < vrp->num_bufs / 2)
  ret = vrp->sbufs + vrp->buf_size * vrp->last_sbuf++;

 else
  ret = virtqueue_get_buf(vrp->svq, &len);

 mutex_unlock(&vrp->tx_lock);

 return ret;
}
