#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int /*<<< orphan*/  length; } ;
struct iucv_tty_buffer {int /*<<< orphan*/  list; TYPE_2__ msg; TYPE_1__* mbuf; } ;
struct hvc_iucv_private {scalar_t__ iucv_state; int sndbuf_len; int /*<<< orphan*/  path; int /*<<< orphan*/  tty_outqueue; int /*<<< orphan*/  sndbuf; } ;
struct TYPE_3__ {scalar_t__ datalen; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IUCV_DISCONN ; 
 scalar_t__ IUCV_SEVERED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 struct iucv_tty_buffer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iucv_tty_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct hvc_iucv_private *priv)
{
	struct iucv_tty_buffer *sb;
	int rc, len;

	if (priv->iucv_state == IUCV_SEVERED)
		return -EPIPE;

	if (priv->iucv_state == IUCV_DISCONN)
		return -EIO;

	if (!priv->sndbuf_len)
		return 0;

	/* allocate internal buffer to store msg data and also compute total
	 * message length */
	sb = FUNC2(priv->sndbuf_len, GFP_ATOMIC);
	if (!sb)
		return -ENOMEM;

	FUNC6(sb->mbuf->data, priv->sndbuf, priv->sndbuf_len);
	sb->mbuf->datalen = (u16) priv->sndbuf_len;
	sb->msg.length = FUNC0(sb->mbuf->datalen);

	FUNC4(&sb->list, &priv->tty_outqueue);

	rc = FUNC1(priv->path, &sb->msg, 0, 0,
				 (void *) sb->mbuf, sb->msg.length);
	if (rc) {
		/* drop the message here; however we might want to handle
		 * 0x03 (msg limit reached) by trying again... */
		FUNC5(&sb->list);
		FUNC3(sb);
	}
	len = priv->sndbuf_len;
	priv->sndbuf_len = 0;

	return len;
}