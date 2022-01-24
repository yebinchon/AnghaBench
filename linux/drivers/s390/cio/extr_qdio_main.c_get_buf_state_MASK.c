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
struct qdio_q {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct qdio_q*,unsigned int,unsigned char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct qdio_q *q, unsigned int bufnr,
				unsigned char *state, int auto_ack)
{
	return FUNC0(q, bufnr, state, 1, auto_ack, 0);
}