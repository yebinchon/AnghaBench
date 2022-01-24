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
struct cppi_descriptor {struct cppi_descriptor* next; } ;
struct cppi_channel {struct cppi_descriptor* head; struct cppi_descriptor* last_processed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct cppi_channel*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct cppi_descriptor*) ; 

__attribute__((used)) static void FUNC2(int level, const char *tag, struct cppi_channel *rx)
{
	struct cppi_descriptor	*bd;

	FUNC0(level, rx, tag);
	if (rx->last_processed)
		FUNC1("last", rx->last_processed);
	for (bd = rx->head; bd; bd = bd->next)
		FUNC1("active", bd);
}