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
struct sli4_sge {int /*<<< orphan*/  word2; } ;
struct lpfc_io_buf {scalar_t__ dma_sgl; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sli4_sge*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli4_sge_last ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba,
				struct lpfc_io_buf *lpfc_cmd)
{
	struct sli4_sge *sgl = (struct sli4_sge *)lpfc_cmd->dma_sgl;
	if (sgl) {
		sgl += 1;
		sgl->word2 = FUNC2(sgl->word2);
		FUNC0(lpfc_sli4_sge_last, sgl, 1);
		sgl->word2 = FUNC1(sgl->word2);
	}
}