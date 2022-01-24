#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kiocb_priv {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int /*<<< orphan*/  f_flags; struct ep_data* private_data; } ;
struct ep_data {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__* dev; int /*<<< orphan*/ * ep; int /*<<< orphan*/  name; int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EBADMSG ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIOCBQUEUED ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ STATE_EP_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,struct kiocb_priv*,struct ep_data*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ep_data*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ep_data*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ep_data*,int) ; 
 size_t FUNC6 (struct iov_iter*) ; 
 scalar_t__ FUNC7 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (size_t,int /*<<< orphan*/ ) ; 
 struct kiocb_priv* FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC19(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct ep_data *epdata = file->private_data;
	size_t len = FUNC6(from);
	bool configured;
	ssize_t value;
	char *buf;

	if ((value = FUNC5(file->f_flags, epdata, true)) < 0)
		return value;

	configured = epdata->state == STATE_EP_ENABLED;

	/* halt any endpoint by doing a "wrong direction" i/o call */
	if (configured && !FUNC16(&epdata->desc)) {
		if (FUNC17(&epdata->desc) ||
		    !FUNC7(iocb)) {
			FUNC12(&epdata->lock);
			return -EINVAL;
		}
		FUNC0 (epdata->dev, "%s halt\n", epdata->name);
		FUNC13(&epdata->dev->lock);
		if (FUNC11(epdata->ep != NULL))
			FUNC18(epdata->ep);
		FUNC14(&epdata->dev->lock);
		FUNC12(&epdata->lock);
		return -EBADMSG;
	}

	buf = FUNC9(len, GFP_KERNEL);
	if (FUNC15(!buf)) {
		FUNC12(&epdata->lock);
		return -ENOMEM;
	}

	if (FUNC15(!FUNC1(buf, len, from))) {
		value = -EFAULT;
		goto out;
	}

	if (FUNC15(!configured)) {
		value = FUNC3(epdata, buf, len);
	} else if (FUNC7(iocb)) {
		value = FUNC4(epdata, buf, len);
	} else {
		struct kiocb_priv *priv = FUNC10(sizeof *priv, GFP_KERNEL);
		value = -ENOMEM;
		if (priv) {
			value = FUNC2(iocb, priv, epdata, buf, len);
			if (value == -EIOCBQUEUED)
				buf = NULL;
		}
	}
out:
	FUNC8(buf);
	FUNC12(&epdata->lock);
	return value;
}