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
struct qcom_glink_pipe {int dummy; } ;
struct glink_rpm_pipe {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 size_t FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (size_t,char*) ; 
 unsigned int FUNC3 (struct glink_rpm_pipe*,unsigned int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,void const*,size_t) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 struct glink_rpm_pipe* FUNC6 (struct qcom_glink_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct qcom_glink_pipe *glink_pipe,
			       const void *hdr, size_t hlen,
			       const void *data, size_t dlen)
{
	struct glink_rpm_pipe *pipe = FUNC6(glink_pipe);
	size_t tlen = hlen + dlen;
	size_t aligned_dlen;
	unsigned int head;
	char padding[8] = {0};
	size_t pad;

	/* Header length comes from glink native and is always 4 byte aligned */
	if (FUNC2(hlen % 4, "Glink Header length must be 4 bytes aligned\n"))
		return;

	/*
	 * Move the unaligned tail of the message to the padding chunk, to
	 * ensure word aligned accesses
	 */
	aligned_dlen = FUNC1(dlen, 4);
	if (aligned_dlen != dlen)
		FUNC4(padding, data + aligned_dlen, dlen - aligned_dlen);

	head = FUNC5(pipe->head);
	head = FUNC3(pipe, head, hdr, hlen);
	head = FUNC3(pipe, head, data, aligned_dlen);

	pad = FUNC0(tlen, 8) - FUNC1(tlen, 4);
	if (pad)
		head = FUNC3(pipe, head, padding, pad);
	FUNC7(head, pipe->head);
}