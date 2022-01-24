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
struct lcs_reply {void (* callback ) (struct lcs_card*,struct lcs_cmd*) ;int rc; int /*<<< orphan*/  timer; int /*<<< orphan*/  received; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  list; struct lcs_card* card; } ;
struct lcs_cmd {scalar_t__ sequence_no; scalar_t__ return_code; } ;
struct lcs_card {int lancmd_timeout; int /*<<< orphan*/  write; int /*<<< orphan*/  lock; int /*<<< orphan*/  lancmd_waiters; int /*<<< orphan*/  sequence_no; } ;
struct lcs_buffer {int /*<<< orphan*/  callback; scalar_t__ data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 struct lcs_reply* FUNC3 (struct lcs_cmd*) ; 
 int /*<<< orphan*/  lcs_lancmd_timeout ; 
 int /*<<< orphan*/  FUNC4 (struct lcs_reply*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct lcs_buffer*) ; 
 int /*<<< orphan*/  lcs_release_buffer ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct lcs_card *card, struct lcs_buffer *buffer,
		void (*reply_callback)(struct lcs_card *, struct lcs_cmd *))
{
	struct lcs_reply *reply;
	struct lcs_cmd *cmd;
	unsigned long flags;
	int rc;

	FUNC0(4, trace, "sendcmd");
	cmd = (struct lcs_cmd *) buffer->data;
	cmd->return_code = 0;
	cmd->sequence_no = card->sequence_no++;
	reply = FUNC3(cmd);
	if (!reply)
		return -ENOMEM;
	reply->callback = reply_callback;
	reply->card = card;
	FUNC8(&card->lock, flags);
	FUNC6(&reply->list, &card->lancmd_waiters);
	FUNC9(&card->lock, flags);

	buffer->callback = lcs_release_buffer;
	rc = FUNC5(&card->write, buffer);
	if (rc)
		return rc;
	FUNC10(&reply->timer, lcs_lancmd_timeout, 0);
	FUNC7(&reply->timer, jiffies + HZ * card->lancmd_timeout);
	FUNC11(reply->wait_q, reply->received);
	FUNC2(&reply->timer);
	FUNC1(4, trace, "rc:%d",reply->rc);
	rc = reply->rc;
	FUNC4(reply);
	return rc ? -EIO : 0;
}