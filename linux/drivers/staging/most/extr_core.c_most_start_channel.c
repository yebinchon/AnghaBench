
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct most_interface {int mod; TYPE_1__* p; } ;
struct TYPE_8__ {scalar_t__ refs; int num_buffers; struct core_component* comp; } ;
struct TYPE_7__ {scalar_t__ refs; int num_buffers; struct core_component* comp; } ;
struct TYPE_10__ {scalar_t__ direction; int num_buffers; scalar_t__ extra_len; } ;
struct most_channel {int start_mutex; TYPE_3__ pipe1; TYPE_2__ pipe0; int mbo_ref; TYPE_5__ cfg; scalar_t__ is_starving; int hdm_fifo_wq; int channel_id; TYPE_4__* iface; } ;
struct core_component {int dummy; } ;
struct TYPE_9__ {scalar_t__ (* configure ) (TYPE_4__*,int ,TYPE_5__*) ;} ;
struct TYPE_6__ {struct most_channel** channel; } ;


 int EINVAL ;
 int ENOLCK ;
 int ENOMEM ;
 scalar_t__ MOST_CH_RX ;
 int arm_mbo_chain (struct most_channel*,scalar_t__,int ) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 int module_put (int ) ;
 int most_read_completion ;
 int most_write_completion ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int run_enqueue_thread (struct most_channel*,int) ;
 scalar_t__ stub1 (TYPE_4__*,int ,TYPE_5__*) ;
 int try_module_get (int ) ;
 scalar_t__ unlikely (int) ;

int most_start_channel(struct most_interface *iface, int id,
         struct core_component *comp)
{
 int num_buffer;
 int ret;
 struct most_channel *c = iface->p->channel[id];

 if (unlikely(!c))
  return -EINVAL;

 mutex_lock(&c->start_mutex);
 if (c->pipe0.refs + c->pipe1.refs > 0)
  goto out;

 if (!try_module_get(iface->mod)) {
  pr_info("failed to acquire HDM lock\n");
  mutex_unlock(&c->start_mutex);
  return -ENOLCK;
 }

 c->cfg.extra_len = 0;
 if (c->iface->configure(c->iface, c->channel_id, &c->cfg)) {
  pr_info("channel configuration failed. Go check settings...\n");
  ret = -EINVAL;
  goto err_put_module;
 }

 init_waitqueue_head(&c->hdm_fifo_wq);

 if (c->cfg.direction == MOST_CH_RX)
  num_buffer = arm_mbo_chain(c, c->cfg.direction,
        most_read_completion);
 else
  num_buffer = arm_mbo_chain(c, c->cfg.direction,
        most_write_completion);
 if (unlikely(!num_buffer)) {
  ret = -ENOMEM;
  goto err_put_module;
 }

 ret = run_enqueue_thread(c, id);
 if (ret)
  goto err_put_module;

 c->is_starving = 0;
 c->pipe0.num_buffers = c->cfg.num_buffers / 2;
 c->pipe1.num_buffers = c->cfg.num_buffers - c->pipe0.num_buffers;
 atomic_set(&c->mbo_ref, num_buffer);

out:
 if (comp == c->pipe0.comp)
  c->pipe0.refs++;
 if (comp == c->pipe1.comp)
  c->pipe1.refs++;
 mutex_unlock(&c->start_mutex);
 return 0;

err_put_module:
 module_put(iface->mod);
 mutex_unlock(&c->start_mutex);
 return ret;
}
