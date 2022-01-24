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
struct rspi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPCR_SPRIE ; 
 int /*<<< orphan*/  SPSR_SPRF ; 
 int FUNC0 (struct rspi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct rspi_data *rspi)
{
	return FUNC0(rspi, SPSR_SPRF, SPCR_SPRIE);
}