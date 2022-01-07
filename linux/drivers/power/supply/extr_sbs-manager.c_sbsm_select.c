
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct sbsm_data {scalar_t__ cur_chan; TYPE_1__* client; } ;
struct i2c_mux_core {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int BIT (scalar_t__) ;
 int SBSM_CMD_BATSYSSTATE ;
 scalar_t__ SBSM_SMB_BAT_OFFSET ;
 int dev_err (struct device*,char*,scalar_t__) ;
 struct sbsm_data* i2c_mux_priv (struct i2c_mux_core*) ;
 int sbsm_write_word (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int sbsm_select(struct i2c_mux_core *muxc, u32 chan)
{
 struct sbsm_data *data = i2c_mux_priv(muxc);
 struct device *dev = &data->client->dev;
 int ret = 0;
 u16 reg;

 if (data->cur_chan == chan)
  return ret;


 reg = BIT(SBSM_SMB_BAT_OFFSET + chan);
 ret = sbsm_write_word(data->client, SBSM_CMD_BATSYSSTATE, reg);
 if (ret)
  dev_err(dev, "Failed to select channel %i\n", chan);
 else
  data->cur_chan = chan;

 return ret;
}
