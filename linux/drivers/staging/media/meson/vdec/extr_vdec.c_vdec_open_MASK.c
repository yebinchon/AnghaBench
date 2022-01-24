#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_3__* private_data; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/ * ctrl_handler; } ;
struct TYPE_6__ {int numerator; int denominator; } ;
struct amvdec_session {int width; int height; int /*<<< orphan*/  m2m_dev; TYPE_3__ fh; int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  ts_spinlock; int /*<<< orphan*/  bufs_recycle_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  esparser_queue_work; int /*<<< orphan*/  bufs_recycle; int /*<<< orphan*/  timestamps; TYPE_2__ pixelaspect; struct amvdec_format const* fmt_out; int /*<<< orphan*/  pixfmt_cap; struct amvdec_core* core; } ;
struct amvdec_format {int /*<<< orphan*/ * pixfmts_cap; } ;
struct amvdec_core {int /*<<< orphan*/  vdev_dec; TYPE_1__* platform; struct device* dev; } ;
struct TYPE_5__ {struct amvdec_format* formats; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  esparser_queue_all_src ; 
 int /*<<< orphan*/  FUNC5 (struct amvdec_session*) ; 
 struct amvdec_session* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m2m_queue_init ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct amvdec_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct amvdec_session*) ; 
 int /*<<< orphan*/  vdec_m2m_ops ; 
 struct amvdec_core* FUNC15 (struct file*) ; 

__attribute__((used)) static int FUNC16(struct file *file)
{
	struct amvdec_core *core = FUNC15(file);
	struct device *dev = core->dev;
	const struct amvdec_format *formats = core->platform->formats;
	struct amvdec_session *sess;
	int ret;

	sess = FUNC6(sizeof(*sess), GFP_KERNEL);
	if (!sess)
		return -ENOMEM;

	sess->core = core;

	sess->m2m_dev = FUNC12(&vdec_m2m_ops);
	if (FUNC2(sess->m2m_dev)) {
		FUNC4(dev, "Fail to v4l2_m2m_init\n");
		ret = FUNC3(sess->m2m_dev);
		goto err_free_sess;
	}

	sess->m2m_ctx = FUNC11(sess->m2m_dev, sess, m2m_queue_init);
	if (FUNC2(sess->m2m_ctx)) {
		FUNC4(dev, "Fail to v4l2_m2m_ctx_init\n");
		ret = FUNC3(sess->m2m_ctx);
		goto err_m2m_release;
	}

	ret = FUNC14(sess);
	if (ret)
		goto err_m2m_release;

	sess->pixfmt_cap = formats[0].pixfmts_cap[0];
	sess->fmt_out = &formats[0];
	sess->width = 1280;
	sess->height = 720;
	sess->pixelaspect.numerator = 1;
	sess->pixelaspect.denominator = 1;

	FUNC0(&sess->timestamps);
	FUNC0(&sess->bufs_recycle);
	FUNC1(&sess->esparser_queue_work, esparser_queue_all_src);
	FUNC7(&sess->lock);
	FUNC7(&sess->bufs_recycle_lock);
	FUNC8(&sess->ts_spinlock);

	FUNC10(&sess->fh, core->vdev_dec);
	sess->fh.ctrl_handler = &sess->ctrl_handler;
	FUNC9(&sess->fh);
	sess->fh.m2m_ctx = sess->m2m_ctx;
	file->private_data = &sess->fh;

	return 0;

err_m2m_release:
	FUNC13(sess->m2m_dev);
err_free_sess:
	FUNC5(sess);
	return ret;
}