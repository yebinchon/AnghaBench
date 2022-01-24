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
typedef  scalar_t__ u32 ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline void
FUNC2(struct buffer_head *bh, u32 val)
{
	u32 tmp = FUNC0(((__be32 *)bh->b_data)[5]);
	((__be32 *)bh->b_data)[5] = FUNC1(tmp - val);
}