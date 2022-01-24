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
struct page {int dummy; } ;
struct ahash_request {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,struct page*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct ahash_request *hash,
		struct page *page, off_t off, size_t len)
{
	struct scatterlist sg;

	FUNC2(&sg, 1);
	FUNC3(&sg, page, len, off);
	FUNC0(hash, &sg, NULL, len);
	FUNC1(hash);
}