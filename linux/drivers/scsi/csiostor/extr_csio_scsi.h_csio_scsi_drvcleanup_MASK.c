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
struct csio_ioreq {int /*<<< orphan*/  sm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_SCSIE_DRVCLEANUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(struct csio_ioreq *ioreq)
{
	FUNC0(&ioreq->sm, CSIO_SCSIE_DRVCLEANUP);
}