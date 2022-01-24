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
struct pvcalls_data {int out; } ;
struct sock_mapping {int /*<<< orphan*/  irq; int /*<<< orphan*/  write; int /*<<< orphan*/  io; int /*<<< orphan*/  sock; int /*<<< orphan*/  ring_order; struct pvcalls_data data; struct pvcalls_data_intf* ring; } ;
struct pvcalls_data_intf {int out_cons; int out_prod; int out_error; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; int /*<<< orphan*/  msg_flags; } ;
struct kvec {int iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int RING_IDX ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  READ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct msghdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msghdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct sock_mapping *map)
{
	struct pvcalls_data_intf *intf = map->ring;
	struct pvcalls_data *data = &map->data;
	struct msghdr msg;
	struct kvec vec[2];
	RING_IDX cons, prod, size, array_size;
	int ret;

	cons = intf->out_cons;
	prod = intf->out_prod;
	/* read the indexes before dealing with the data */
	FUNC9();

	array_size = FUNC0(map->ring_order);
	size = FUNC8(prod, cons, array_size);
	if (size == 0)
		return;

	FUNC5(&msg, 0, sizeof(msg));
	msg.msg_flags |= MSG_DONTWAIT;
	if (FUNC7(prod, array_size) > FUNC7(cons, array_size)) {
		vec[0].iov_base = data->out + FUNC7(cons, array_size);
		vec[0].iov_len = size;
		FUNC4(&msg.msg_iter, READ, vec, 1, size);
	} else {
		vec[0].iov_base = data->out + FUNC7(cons, array_size);
		vec[0].iov_len = array_size - FUNC7(cons, array_size);
		vec[1].iov_base = data->out;
		vec[1].iov_len = size - vec[0].iov_len;
		FUNC4(&msg.msg_iter, READ, vec, 2, size);
	}

	FUNC2(&map->write, 0);
	ret = FUNC3(map->sock, &msg, size);
	if (ret == -EAGAIN || (ret >= 0 && ret < size)) {
		FUNC1(&map->write);
		FUNC1(&map->io);
	}
	if (ret == -EAGAIN)
		return;

	/* write the data, then update the indexes */
	FUNC10();
	if (ret < 0) {
		intf->out_error = ret;
	} else {
		intf->out_error = 0;
		intf->out_cons = cons + ret;
		prod = intf->out_prod;
	}
	/* update the indexes, then notify the other end */
	FUNC10();
	if (prod != cons + ret)
		FUNC1(&map->write);
	FUNC6(map->irq);
}