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
struct pvcalls_data_intf {scalar_t__ out_error; scalar_t__ out_cons; scalar_t__ out_prod; } ;
struct pvcalls_data {scalar_t__ out; } ;
struct iov_iter {int dummy; } ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PVCALLS_RING_ORDER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int,struct iov_iter*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct pvcalls_data_intf *intf,
			struct pvcalls_data *data,
			struct iov_iter *msg_iter,
			int len)
{
	RING_IDX cons, prod, size, masked_prod, masked_cons;
	RING_IDX array_size = FUNC0(PVCALLS_RING_ORDER);
	int32_t error;

	error = intf->out_error;
	if (error < 0)
		return error;
	cons = intf->out_cons;
	prod = intf->out_prod;
	/* read indexes before continuing */
	FUNC4();

	size = FUNC3(prod, cons, array_size);
	if (size > array_size)
		return -EINVAL;
	if (size == array_size)
		return 0;
	if (len > array_size - size)
		len = array_size - size;

	masked_prod = FUNC2(prod, array_size);
	masked_cons = FUNC2(cons, array_size);

	if (masked_prod < masked_cons) {
		len = FUNC1(data->out + masked_prod, len, msg_iter);
	} else {
		if (len > array_size - masked_prod) {
			int ret = FUNC1(data->out + masked_prod,
				       array_size - masked_prod, msg_iter);
			if (ret != array_size - masked_prod) {
				len = ret;
				goto out;
			}
			len = ret + FUNC1(data->out, len - ret, msg_iter);
		} else {
			len = FUNC1(data->out + masked_prod, len, msg_iter);
		}
	}
out:
	/* write to ring before updating pointer */
	FUNC5();
	intf->out_prod += len;

	return len;
}