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
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static inline void
FUNC2(void *mpi_request, int sz)
{
	int i;
	__le32 *mfp = (__le32 *)mpi_request;

	FUNC1("reply:\n\t");
	for (i = 0; i < sz; i++) {
		if (i && ((i % 8) == 0))
			FUNC1("\n\t");
		FUNC1("%08x ", FUNC0(mfp[i]));
	}
	FUNC1("\n");
}