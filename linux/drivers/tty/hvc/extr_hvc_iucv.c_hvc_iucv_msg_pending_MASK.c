#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iucv_message {scalar_t__ length; } ;
struct iucv_tty_buffer {int /*<<< orphan*/  list; struct iucv_message msg; } ;
struct iucv_path {struct hvc_iucv_private* private; } ;
struct hvc_iucv_private {scalar_t__ tty_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  tty_inqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MSG_MAX_DATALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TTY_CLOSED ; 
 struct iucv_tty_buffer* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct iucv_path*,struct iucv_message*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct iucv_path *path,
				 struct iucv_message *msg)
{
	struct hvc_iucv_private *priv = path->private;
	struct iucv_tty_buffer *rb;

	/* reject messages that exceed max size of iucv_tty_msg->datalen */
	if (msg->length > FUNC0(MSG_MAX_DATALEN)) {
		FUNC3(path, msg);
		return;
	}

	FUNC5(&priv->lock);

	/* reject messages if tty has not yet been opened */
	if (priv->tty_state == TTY_CLOSED) {
		FUNC3(path, msg);
		goto unlock_return;
	}

	/* allocate tty buffer to save iucv msg only */
	rb = FUNC1(0, GFP_ATOMIC);
	if (!rb) {
		FUNC3(path, msg);
		goto unlock_return;	/* -ENOMEM */
	}
	rb->msg = *msg;

	FUNC4(&rb->list, &priv->tty_inqueue);

	FUNC2();	/* wake up hvc thread */

unlock_return:
	FUNC6(&priv->lock);
}