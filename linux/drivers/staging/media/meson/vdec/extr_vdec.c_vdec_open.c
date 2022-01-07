
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct file {TYPE_3__* private_data; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int m2m_ctx; int * ctrl_handler; } ;
struct TYPE_6__ {int numerator; int denominator; } ;
struct amvdec_session {int width; int height; int m2m_dev; TYPE_3__ fh; int m2m_ctx; int ctrl_handler; int ts_spinlock; int bufs_recycle_lock; int lock; int esparser_queue_work; int bufs_recycle; int timestamps; TYPE_2__ pixelaspect; struct amvdec_format const* fmt_out; int pixfmt_cap; struct amvdec_core* core; } ;
struct amvdec_format {int * pixfmts_cap; } ;
struct amvdec_core {int vdev_dec; TYPE_1__* platform; struct device* dev; } ;
struct TYPE_5__ {struct amvdec_format* formats; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int esparser_queue_all_src ;
 int kfree (struct amvdec_session*) ;
 struct amvdec_session* kzalloc (int,int ) ;
 int m2m_queue_init ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int v4l2_fh_add (TYPE_3__*) ;
 int v4l2_fh_init (TYPE_3__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct amvdec_session*,int ) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 int vdec_init_ctrls (struct amvdec_session*) ;
 int vdec_m2m_ops ;
 struct amvdec_core* video_drvdata (struct file*) ;

__attribute__((used)) static int vdec_open(struct file *file)
{
 struct amvdec_core *core = video_drvdata(file);
 struct device *dev = core->dev;
 const struct amvdec_format *formats = core->platform->formats;
 struct amvdec_session *sess;
 int ret;

 sess = kzalloc(sizeof(*sess), GFP_KERNEL);
 if (!sess)
  return -ENOMEM;

 sess->core = core;

 sess->m2m_dev = v4l2_m2m_init(&vdec_m2m_ops);
 if (IS_ERR(sess->m2m_dev)) {
  dev_err(dev, "Fail to v4l2_m2m_init\n");
  ret = PTR_ERR(sess->m2m_dev);
  goto err_free_sess;
 }

 sess->m2m_ctx = v4l2_m2m_ctx_init(sess->m2m_dev, sess, m2m_queue_init);
 if (IS_ERR(sess->m2m_ctx)) {
  dev_err(dev, "Fail to v4l2_m2m_ctx_init\n");
  ret = PTR_ERR(sess->m2m_ctx);
  goto err_m2m_release;
 }

 ret = vdec_init_ctrls(sess);
 if (ret)
  goto err_m2m_release;

 sess->pixfmt_cap = formats[0].pixfmts_cap[0];
 sess->fmt_out = &formats[0];
 sess->width = 1280;
 sess->height = 720;
 sess->pixelaspect.numerator = 1;
 sess->pixelaspect.denominator = 1;

 INIT_LIST_HEAD(&sess->timestamps);
 INIT_LIST_HEAD(&sess->bufs_recycle);
 INIT_WORK(&sess->esparser_queue_work, esparser_queue_all_src);
 mutex_init(&sess->lock);
 mutex_init(&sess->bufs_recycle_lock);
 spin_lock_init(&sess->ts_spinlock);

 v4l2_fh_init(&sess->fh, core->vdev_dec);
 sess->fh.ctrl_handler = &sess->ctrl_handler;
 v4l2_fh_add(&sess->fh);
 sess->fh.m2m_ctx = sess->m2m_ctx;
 file->private_data = &sess->fh;

 return 0;

err_m2m_release:
 v4l2_m2m_release(sess->m2m_dev);
err_free_sess:
 kfree(sess);
 return ret;
}
