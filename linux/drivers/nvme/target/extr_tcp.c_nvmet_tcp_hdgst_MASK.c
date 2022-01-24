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
struct scatterlist {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahash_request*,struct scatterlist*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,void*,size_t) ; 

__attribute__((used)) static inline void FUNC3(struct ahash_request *hash,
		void *pdu, size_t len)
{
	struct scatterlist sg;

	FUNC2(&sg, pdu, len);
	FUNC0(hash, &sg, pdu + len, len);
	FUNC1(hash);
}