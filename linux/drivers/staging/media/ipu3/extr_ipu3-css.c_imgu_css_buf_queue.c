
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct imgu_css_pipe {TYPE_8__** abi_buffers; int qlock; TYPE_6__* queue; } ;
struct imgu_css_buffer {size_t queue; size_t queue_pos; int list; int state; int daddr; } ;
struct imgu_css {int dev; struct imgu_css_pipe* pipes; int streaming; } ;
struct imgu_addr_t {int dummy; } ;
struct TYPE_12__ {int padded_width; } ;
struct TYPE_9__ {int s3a_tbl; } ;
struct TYPE_10__ {TYPE_1__ dmem; } ;
struct TYPE_11__ {TYPE_2__ data; } ;
struct TYPE_13__ {TYPE_4__ frame; TYPE_3__ s3a; } ;
struct imgu_abi_buffer {TYPE_5__ payload; } ;
typedef int imgu_addr_t ;
struct TYPE_16__ {int daddr; struct imgu_abi_buffer* vaddr; } ;
struct TYPE_15__ {int ptr_ofs; int qid; } ;
struct TYPE_14__ {int bufs; int width_pad; } ;


 size_t ARRAY_SIZE (TYPE_8__*) ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int EPROTO ;
 int IMGU_ABI_EVENT_BUFFER_ENQUEUED (unsigned int,int ) ;
 int IMGU_ABI_QUEUE_EVENT_ID ;
 int IPU3_CSS_BUFFER_FAILED ;
 int IPU3_CSS_BUFFER_NEW ;
 int IPU3_CSS_BUFFER_QUEUED ;
 size_t IPU3_CSS_QUEUES ;
 size_t IPU3_CSS_QUEUE_OUT ;
 size_t IPU3_CSS_QUEUE_STAT_3A ;
 size_t IPU3_CSS_QUEUE_VF ;
 int dev_dbg (int ,char*,struct imgu_css_buffer*,size_t,unsigned int) ;
 int imgu_css_queue_data (struct imgu_css*,int ,unsigned int,int ) ;
 size_t imgu_css_queue_pos (struct imgu_css*,int ,unsigned int) ;
 TYPE_7__* imgu_css_queues ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memset (struct imgu_abi_buffer*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int imgu_css_buf_queue(struct imgu_css *css, unsigned int pipe,
         struct imgu_css_buffer *b)
{
 struct imgu_abi_buffer *abi_buf;
 struct imgu_addr_t *buf_addr;
 u32 data;
 int r;
 struct imgu_css_pipe *css_pipe = &css->pipes[pipe];

 if (!css->streaming)
  return -EPROTO;

 if (b->queue >= IPU3_CSS_QUEUES || !imgu_css_queues[b->queue].qid)
  return -EINVAL;

 b->queue_pos = imgu_css_queue_pos(css, imgu_css_queues[b->queue].qid,
       pipe);

 if (b->queue_pos >= ARRAY_SIZE(css->pipes[pipe].abi_buffers[b->queue]))
  return -EIO;
 abi_buf = css->pipes[pipe].abi_buffers[b->queue][b->queue_pos].vaddr;


 memset(abi_buf, 0, sizeof(*abi_buf));

 buf_addr = (void *)abi_buf + imgu_css_queues[b->queue].ptr_ofs;
 *(imgu_addr_t *)buf_addr = b->daddr;

 if (b->queue == IPU3_CSS_QUEUE_STAT_3A)
  abi_buf->payload.s3a.data.dmem.s3a_tbl = b->daddr;

 if (b->queue == IPU3_CSS_QUEUE_OUT)
  abi_buf->payload.frame.padded_width =
    css_pipe->queue[IPU3_CSS_QUEUE_OUT].width_pad;

 if (b->queue == IPU3_CSS_QUEUE_VF)
  abi_buf->payload.frame.padded_width =
     css_pipe->queue[IPU3_CSS_QUEUE_VF].width_pad;

 spin_lock(&css_pipe->qlock);
 list_add_tail(&b->list, &css_pipe->queue[b->queue].bufs);
 spin_unlock(&css_pipe->qlock);
 b->state = IPU3_CSS_BUFFER_QUEUED;

 data = css->pipes[pipe].abi_buffers[b->queue][b->queue_pos].daddr;
 r = imgu_css_queue_data(css, imgu_css_queues[b->queue].qid,
    pipe, data);
 if (r < 0)
  goto queueing_failed;

 data = IMGU_ABI_EVENT_BUFFER_ENQUEUED(pipe,
           imgu_css_queues[b->queue].qid);
 r = imgu_css_queue_data(css, IMGU_ABI_QUEUE_EVENT_ID, pipe, data);
 if (r < 0)
  goto queueing_failed;

 dev_dbg(css->dev, "queued buffer %p to css queue %i in pipe %d\n",
  b, b->queue, pipe);

 return 0;

queueing_failed:
 b->state = (r == -EBUSY || r == -EAGAIN) ?
  IPU3_CSS_BUFFER_NEW : IPU3_CSS_BUFFER_FAILED;
 list_del(&b->list);

 return r;
}
