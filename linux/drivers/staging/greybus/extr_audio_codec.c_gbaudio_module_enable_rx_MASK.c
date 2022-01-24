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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct gbaudio_stream_params {int /*<<< orphan*/  sig_bits; int /*<<< orphan*/  rate; int /*<<< orphan*/  channels; int /*<<< orphan*/  format; } ;
struct gbaudio_module_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  mgmt_connection; } ;
struct gbaudio_data_connection {int* state; TYPE_1__* connection; } ;
struct gbaudio_codec_info {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ intf_cport_id; scalar_t__ hd_cport_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_APBRIDGEA_DIRECTION_RX ; 
 int EINVAL ; 
 int ENODEV ; 
 int GBAUDIO_CODEC_HWPARAMS ; 
 int GBAUDIO_CODEC_PREPARE ; 
 int GBAUDIO_CODEC_STARTUP ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct gbaudio_stream_params* FUNC3 (struct gbaudio_codec_info*,int,size_t) ; 
 struct gbaudio_data_connection* FUNC4 (struct gbaudio_module_info*,int) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC9(struct gbaudio_codec_info *codec,
				    struct gbaudio_module_info *module, int id)
{
	int module_state, ret = 0;
	u16 data_cport, i2s_port, cportid;
	u8 sig_bits, channels;
	u32 format, rate;
	struct gbaudio_data_connection *data;
	struct gbaudio_stream_params *params;

	/* find the dai */
	data = FUNC4(module, id);
	if (!data) {
		FUNC1(module->dev, "%d:DATA connection missing\n", id);
		return -ENODEV;
	}
	module_state = data->state[SNDRV_PCM_STREAM_CAPTURE];

	params = FUNC3(codec, id, SNDRV_PCM_STREAM_CAPTURE);
	if (!params) {
		FUNC1(codec->dev, "Failed to fetch dai_stream pointer\n");
		return -EINVAL;
	}

	/* register cport */
	if (module_state < GBAUDIO_CODEC_STARTUP) {
		i2s_port = 0;	/* fixed for now */
		cportid = data->connection->hd_cport_id;
		ret = FUNC5(data->connection,
						i2s_port, cportid,
						AUDIO_APBRIDGEA_DIRECTION_RX);
		if (ret) {
			FUNC2(module->dev,
					    "reg_cport failed:%d\n", ret);
			return ret;
		}
		data->state[SNDRV_PCM_STREAM_CAPTURE] =
			GBAUDIO_CODEC_STARTUP;
		FUNC0(module->dev, "Dynamic Register %d DAI\n", cportid);
	}

	/* hw_params */
	if (module_state < GBAUDIO_CODEC_HWPARAMS) {
		format = params->format;
		channels = params->channels;
		rate = params->rate;
		sig_bits = params->sig_bits;
		data_cport = data->connection->intf_cport_id;
		ret = FUNC7(module->mgmt_connection, data_cport,
					  format, rate, channels, sig_bits);
		if (ret) {
			FUNC2(module->dev, "set_pcm failed:%d\n",
					    ret);
			return ret;
		}
		data->state[SNDRV_PCM_STREAM_CAPTURE] =
			GBAUDIO_CODEC_HWPARAMS;
		FUNC0(module->dev, "Dynamic hw_params %d DAI\n", data_cport);
	}

	/* prepare */
	if (module_state < GBAUDIO_CODEC_PREPARE) {
		data_cport = data->connection->intf_cport_id;
		ret = FUNC8(module->mgmt_connection,
						   data_cport, 192);
		if (ret) {
			FUNC2(module->dev,
					    "set_rx_data_size failed:%d\n",
					    ret);
			return ret;
		}
		ret = FUNC6(module->mgmt_connection,
					      data_cport);
		if (ret) {
			FUNC2(module->dev,
					    "activate_rx failed:%d\n", ret);
			return ret;
		}
		data->state[SNDRV_PCM_STREAM_CAPTURE] =
			GBAUDIO_CODEC_PREPARE;
		FUNC0(module->dev, "Dynamic prepare %d DAI\n", data_cport);
	}

	return 0;
}