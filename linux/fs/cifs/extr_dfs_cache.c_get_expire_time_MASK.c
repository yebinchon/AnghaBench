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
struct timespec64 {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 struct timespec64 FUNC1 (struct timespec64,struct timespec64) ; 

__attribute__((used)) static inline struct timespec64 FUNC2(int ttl)
{
	struct timespec64 ts = {
		.tv_sec = ttl,
		.tv_nsec = 0,
	};
	struct timespec64 now;

	FUNC0(&now);
	return FUNC1(now, ts);
}