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
typedef  int /*<<< orphan*/  u16 ;
struct qeth_cmd_buffer {int /*<<< orphan*/  callback; } ;
struct qeth_card {int /*<<< orphan*/  write; } ;
struct net_device {struct qeth_card* ml_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_IPA_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 struct qeth_cmd_buffer* FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  qeth_osn_assist_cb ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(struct net_device *dev, void *data, int data_len)
{
	struct qeth_cmd_buffer *iob;
	struct qeth_card *card;

	if (data_len < 0)
		return -EINVAL;
	if (!dev)
		return -ENODEV;
	card = dev->ml_priv;
	if (!card)
		return -ENODEV;
	FUNC0(card, 2, "osnsdmc");
	if (!FUNC4(card))
		return -ENODEV;

	iob = FUNC3(&card->write, IPA_PDU_HEADER_SIZE + data_len, 1,
			     QETH_IPA_TIMEOUT);
	if (!iob)
		return -ENOMEM;

	FUNC5(card, iob, (u16) data_len);
	FUNC2(FUNC1(iob), data, data_len);
	iob->callback = qeth_osn_assist_cb;
	return FUNC6(card, iob, NULL, NULL);
}