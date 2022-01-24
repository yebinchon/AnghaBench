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
struct dwc2_qtd {int /*<<< orphan*/  qtd_list_entry; } ;
struct dwc2_qh {int dummy; } ;
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc2_qtd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct dwc2_hsotg *hsotg,
						struct dwc2_qtd *qtd,
						struct dwc2_qh *qh)
{
	FUNC1(&qtd->qtd_list_entry);
	FUNC0(qtd);
}