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
struct zfcp_qdio_req {int dummy; } ;
struct zfcp_qdio {int dummy; } ;
struct scatterlist {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_qdio*,struct zfcp_qdio_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_qdio*,struct zfcp_qdio_req*) ; 

__attribute__((used)) static void FUNC3(struct zfcp_qdio *qdio,
					    struct zfcp_qdio_req *q_req,
					    struct scatterlist *sg_req,
					    struct scatterlist *sg_resp)
{
	FUNC1(qdio, q_req, FUNC0(sg_req), sg_req->length);
	FUNC1(qdio, q_req, FUNC0(sg_resp), sg_resp->length);
	FUNC2(qdio, q_req);
}