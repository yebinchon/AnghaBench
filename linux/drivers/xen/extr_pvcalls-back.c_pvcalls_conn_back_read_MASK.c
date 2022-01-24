#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pvcalls_data {scalar_t__ in; } ;
struct sock_mapping {int /*<<< orphan*/  irq; int /*<<< orphan*/  read; TYPE_3__* sock; int /*<<< orphan*/  ring_order; struct pvcalls_data data; struct pvcalls_data_intf* ring; } ;
struct pvcalls_data_intf {scalar_t__ in_cons; scalar_t__ in_prod; int in_error; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
struct kvec {scalar_t__ iov_base; scalar_t__ iov_len; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int int32_t ;
struct TYPE_6__ {TYPE_1__* sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_2__ sk_receive_queue; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,struct msghdr*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct msghdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15(void *opaque)
{
	struct sock_mapping *map = (struct sock_mapping *)opaque;
	struct msghdr msg;
	struct kvec vec[2];
	RING_IDX cons, prod, size, wanted, array_size, masked_prod, masked_cons;
	int32_t error;
	struct pvcalls_data_intf *intf = map->ring;
	struct pvcalls_data *data = &map->data;
	unsigned long flags;
	int ret;

	array_size = FUNC1(map->ring_order);
	cons = intf->in_cons;
	prod = intf->in_prod;
	error = intf->in_error;
	/* read the indexes first, then deal with the data */
	FUNC13();

	if (error)
		return;

	size = FUNC9(prod, cons, array_size);
	if (size >= array_size)
		return;
	FUNC11(&map->sock->sk->sk_receive_queue.lock, flags);
	if (FUNC10(&map->sock->sk->sk_receive_queue)) {
		FUNC3(&map->read, 0);
		FUNC12(&map->sock->sk->sk_receive_queue.lock,
				flags);
		return;
	}
	FUNC12(&map->sock->sk->sk_receive_queue.lock, flags);
	wanted = array_size - size;
	masked_prod = FUNC8(prod, array_size);
	masked_cons = FUNC8(cons, array_size);

	FUNC6(&msg, 0, sizeof(msg));
	if (masked_prod < masked_cons) {
		vec[0].iov_base = data->in + masked_prod;
		vec[0].iov_len = wanted;
		FUNC5(&msg.msg_iter, WRITE, vec, 1, wanted);
	} else {
		vec[0].iov_base = data->in + masked_prod;
		vec[0].iov_len = array_size - masked_prod;
		vec[1].iov_base = data->in;
		vec[1].iov_len = wanted - vec[0].iov_len;
		FUNC5(&msg.msg_iter, WRITE, vec, 2, wanted);
	}

	FUNC3(&map->read, 0);
	ret = FUNC4(map->sock, &msg, wanted, MSG_DONTWAIT);
	FUNC0(ret > wanted);
	if (ret == -EAGAIN) /* shouldn't happen */
		return;
	if (!ret)
		ret = -ENOTCONN;
	FUNC11(&map->sock->sk->sk_receive_queue.lock, flags);
	if (ret > 0 && !FUNC10(&map->sock->sk->sk_receive_queue))
		FUNC2(&map->read);
	FUNC12(&map->sock->sk->sk_receive_queue.lock, flags);

	/* write the data, then modify the indexes */
	FUNC14();
	if (ret < 0) {
		FUNC3(&map->read, 0);
		intf->in_error = ret;
	} else
		intf->in_prod = prod + ret;
	/* update the indexes, then notify the other end */
	FUNC14();
	FUNC7(map->irq);

	return;
}