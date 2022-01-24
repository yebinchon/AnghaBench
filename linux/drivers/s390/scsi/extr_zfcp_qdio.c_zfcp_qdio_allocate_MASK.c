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
struct zfcp_qdio {int /*<<< orphan*/  req_q; int /*<<< orphan*/  res_q; int /*<<< orphan*/  req_q_wq; } ;
struct qdio_initialize {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qdio_initialize*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_initialize*,struct zfcp_qdio*) ; 

__attribute__((used)) static int FUNC5(struct zfcp_qdio *qdio)
{
	struct qdio_initialize init_data;
	int ret;

	ret = FUNC1(qdio->req_q, QDIO_MAX_BUFFERS_PER_Q);
	if (ret)
		return -ENOMEM;

	ret = FUNC1(qdio->res_q, QDIO_MAX_BUFFERS_PER_Q);
	if (ret)
		goto free_req_q;

	FUNC4(&init_data, qdio);
	FUNC0(&qdio->req_q_wq);

	ret = FUNC2(&init_data);
	if (ret)
		goto free_res_q;

	return 0;

free_res_q:
	FUNC3(qdio->res_q, QDIO_MAX_BUFFERS_PER_Q);
free_req_q:
	FUNC3(qdio->req_q, QDIO_MAX_BUFFERS_PER_Q);
	return ret;
}