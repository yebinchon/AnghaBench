#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct TYPE_3__ {void* word_en; int /*<<< orphan*/  word_cnts; int /*<<< orphan*/  data; void* offset; } ;
typedef  TYPE_1__* PPGPKT_STRUCT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  PGPKT_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	u8 offset,
	u8 word_en,
	u8 *pData,
	PPGPKT_STRUCT pTargetPkt
)
{
	FUNC2(pTargetPkt->data, 0xFF, PGPKT_DATA_SIZE);
	pTargetPkt->offset = offset;
	pTargetPkt->word_en = word_en;
	FUNC1(word_en, pData, pTargetPkt->data);
	pTargetPkt->word_cnts = FUNC0(pTargetPkt->word_en);
}