#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t config_size; int /*<<< orphan*/  max_xfer; } ;
struct nvdimm_drvdata {int /*<<< orphan*/  dev; TYPE_1__ nsarea; } ;
struct nvdimm_bus_descriptor {int (* ndctl ) (struct nvdimm_bus_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nd_cmd_get_config_data_hdr*,size_t,int*) ;} ;
struct nvdimm_bus {struct nvdimm_bus_descriptor* nd_desc; } ;
struct nd_cmd_get_config_data_hdr {int in_length; size_t in_offset; int /*<<< orphan*/  out_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ND_CMD_GET_CONFIG_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct nd_cmd_get_config_data_hdr*) ; 
 struct nd_cmd_get_config_data_hdr* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (size_t,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nvdimm_bus_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nd_cmd_get_config_data_hdr*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 
 int FUNC7 (struct nvdimm_drvdata*) ; 
 struct nvdimm_bus* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct nvdimm_drvdata *ndd, void *buf,
			   size_t offset, size_t len)
{
	struct nvdimm_bus *nvdimm_bus = FUNC8(ndd->dev);
	struct nvdimm_bus_descriptor *nd_desc = nvdimm_bus->nd_desc;
	int rc = FUNC7(ndd), cmd_rc = 0;
	struct nd_cmd_get_config_data_hdr *cmd;
	size_t max_cmd_size, buf_offset;

	if (rc)
		return rc;

	if (offset + len > ndd->nsarea.config_size)
		return -ENXIO;

	max_cmd_size = FUNC4(u32, len, ndd->nsarea.max_xfer);
	cmd = FUNC1(max_cmd_size + sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	for (buf_offset = 0; len;
	     len -= cmd->in_length, buf_offset += cmd->in_length) {
		size_t cmd_size;

		cmd->in_offset = offset + buf_offset;
		cmd->in_length = FUNC3(max_cmd_size, len);

		cmd_size = sizeof(*cmd) + cmd->in_length;

		rc = nd_desc->ndctl(nd_desc, FUNC6(ndd->dev),
				ND_CMD_GET_CONFIG_DATA, cmd, cmd_size, &cmd_rc);
		if (rc < 0)
			break;
		if (cmd_rc < 0) {
			rc = cmd_rc;
			break;
		}

		/* out_buf should be valid, copy it into our output buffer */
		FUNC2(buf + buf_offset, cmd->out_buf, cmd->in_length);
	}
	FUNC0(cmd);

	return rc;
}