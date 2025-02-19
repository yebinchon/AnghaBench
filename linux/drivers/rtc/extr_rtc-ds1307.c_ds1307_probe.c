
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int u8 ;
struct nvmem_config {char* name; int word_size; int stride; struct ds1307* priv; int reg_write; int reg_read; scalar_t__ size; } ;
struct i2c_device_id {size_t driver_data; } ;
struct TYPE_22__ {scalar_t__ of_node; } ;
struct i2c_client {int irq; TYPE_5__ dev; int name; } ;
struct ds1307_platform_data {int trickle_charger_setup; } ;
struct ds1307 {int type; TYPE_1__* rtc; TYPE_5__* dev; int flags; int name; TYPE_1__* regmap; } ;
struct chip_desc {size_t trickle_charger_reg; unsigned char bbsqi_bit; int offset; scalar_t__ nvram_size; scalar_t__ rtc_ops; scalar_t__ irq_handler; scalar_t__ alarm; } ;
struct acpi_device_id {size_t driver_data; } ;
typedef int regs ;
typedef enum ds_type { ____Placeholder_ds_type } ds_type ;
struct TYPE_21__ {int uie_unsupported; int nvram_old_abi; int * ops; } ;


 int ACPI_PTR (int ) ;
 int DS1307_BIT_12HR ;
 unsigned char DS1307_BIT_PM ;
 size_t DS1307_REG_HOUR ;
 size_t DS1307_REG_WDAY ;
 unsigned char DS1337_BIT_A1IE ;
 unsigned char DS1337_BIT_A2IE ;
 unsigned char DS1337_BIT_INTCN ;
 unsigned char DS1337_BIT_OSF ;
 unsigned char DS1337_BIT_nEOSC ;
 size_t DS1337_REG_CONTROL ;
 size_t DS1337_REG_STATUS ;
 int DS13XX_TRICKLE_CHARGER_MAGIC ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HAS_ALARM ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 unsigned char MCP794XX_BIT_VBATEN ;
 int PTR_ERR (TYPE_1__*) ;
 unsigned char RX8025_BIT_2412 ;
 unsigned char RX8025_BIT_PON ;
 unsigned char RX8025_BIT_VDET ;
 unsigned char RX8025_BIT_XST ;
 int RX8025_REG_CTRL1 ;
 int RX8025_REG_CTRL2 ;
 struct acpi_device_id* acpi_match_device (int ,TYPE_5__*) ;
 int bcd2bin (int) ;
 unsigned char bin2bcd (int) ;
 struct chip_desc* chips ;
 int clear_bit (int ,int *) ;
 int dev_dbg (TYPE_5__*,char*,int,...) ;
 int dev_err (TYPE_5__*,char*) ;
 struct ds1307_platform_data* dev_get_platdata (TYPE_5__*) ;
 int dev_info (TYPE_5__*,char*) ;
 int dev_set_drvdata (TYPE_5__*,struct ds1307*) ;
 int dev_warn (TYPE_5__*,char*) ;
 int device_set_wakeup_capable (TYPE_5__*,int) ;
 struct ds1307* devm_kzalloc (TYPE_5__*,int,int ) ;
 TYPE_1__* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (TYPE_5__*,int,int *,int ,int,int ,struct ds1307*) ;
 TYPE_1__* devm_rtc_allocate_device (TYPE_5__*) ;
 int ds1307_acpi_ids ;
 int ds1307_add_frequency_test (struct ds1307*) ;
 int ds1307_clks_register (struct ds1307*) ;
 int ds1307_hwmon_register (struct ds1307*) ;
 int ds1307_irq ;
 int ds1307_nvram_read ;
 int ds1307_nvram_write ;
 int ds1307_trickle_init (struct ds1307*,struct chip_desc const*) ;
 int ds13xx_rtc_ops ;





 int i2c_set_clientdata (struct i2c_client*,struct ds1307*) ;



 int mcp794xx ;
 scalar_t__ of_device_get_match_data (TYPE_5__*) ;
 scalar_t__ of_property_read_bool (scalar_t__,char*) ;
 int regmap_bulk_read (TYPE_1__*,int,unsigned char*,int) ;
 int regmap_config ;
 int regmap_write (TYPE_1__*,size_t,unsigned char) ;
 int rtc_nvmem_register (TYPE_1__*,struct nvmem_config*) ;
 int rtc_register_device (TYPE_1__*) ;

 int set_bit (int ,int *) ;

__attribute__((used)) static int ds1307_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ds1307 *ds1307;
 int err = -ENODEV;
 int tmp;
 const struct chip_desc *chip;
 bool want_irq;
 bool ds1307_can_wakeup_device = 0;
 unsigned char regs[8];
 struct ds1307_platform_data *pdata = dev_get_platdata(&client->dev);
 u8 trickle_charger_setup = 0;

 ds1307 = devm_kzalloc(&client->dev, sizeof(struct ds1307), GFP_KERNEL);
 if (!ds1307)
  return -ENOMEM;

 dev_set_drvdata(&client->dev, ds1307);
 ds1307->dev = &client->dev;
 ds1307->name = client->name;

 ds1307->regmap = devm_regmap_init_i2c(client, &regmap_config);
 if (IS_ERR(ds1307->regmap)) {
  dev_err(ds1307->dev, "regmap allocation failed\n");
  return PTR_ERR(ds1307->regmap);
 }

 i2c_set_clientdata(client, ds1307);

 if (client->dev.of_node) {
  ds1307->type = (enum ds_type)
   of_device_get_match_data(&client->dev);
  chip = &chips[ds1307->type];
 } else if (id) {
  chip = &chips[id->driver_data];
  ds1307->type = id->driver_data;
 } else {
  const struct acpi_device_id *acpi_id;

  acpi_id = acpi_match_device(ACPI_PTR(ds1307_acpi_ids),
         ds1307->dev);
  if (!acpi_id)
   return -ENODEV;
  chip = &chips[acpi_id->driver_data];
  ds1307->type = acpi_id->driver_data;
 }

 want_irq = client->irq > 0 && chip->alarm;

 if (!pdata)
  trickle_charger_setup = ds1307_trickle_init(ds1307, chip);
 else if (pdata->trickle_charger_setup)
  trickle_charger_setup = pdata->trickle_charger_setup;

 if (trickle_charger_setup && chip->trickle_charger_reg) {
  trickle_charger_setup |= DS13XX_TRICKLE_CHARGER_MAGIC;
  dev_dbg(ds1307->dev,
   "writing trickle charger info 0x%x to 0x%x\n",
   trickle_charger_setup, chip->trickle_charger_reg);
  regmap_write(ds1307->regmap, chip->trickle_charger_reg,
        trickle_charger_setup);
 }
 switch (ds1307->type) {
 case 136:
 case 135:
 case 133:
 case 132:

  err = regmap_bulk_read(ds1307->regmap, DS1337_REG_CONTROL,
           regs, 2);
  if (err) {
   dev_dbg(ds1307->dev, "read error %d\n", err);
   goto exit;
  }


  if (regs[0] & DS1337_BIT_nEOSC)
   regs[0] &= ~DS1337_BIT_nEOSC;







  if (want_irq || ds1307_can_wakeup_device) {
   regs[0] |= DS1337_BIT_INTCN | chip->bbsqi_bit;
   regs[0] &= ~(DS1337_BIT_A2IE | DS1337_BIT_A1IE);
  }

  regmap_write(ds1307->regmap, DS1337_REG_CONTROL,
        regs[0]);


  if (regs[1] & DS1337_BIT_OSF) {
   regmap_write(ds1307->regmap, DS1337_REG_STATUS,
         regs[1] & ~DS1337_BIT_OSF);
   dev_warn(ds1307->dev, "SET TIME!\n");
  }
  break;

 case 128:
  err = regmap_bulk_read(ds1307->regmap,
           RX8025_REG_CTRL1 << 4 | 0x08, regs, 2);
  if (err) {
   dev_dbg(ds1307->dev, "read error %d\n", err);
   goto exit;
  }


  if (!(regs[1] & RX8025_BIT_XST)) {
   regs[1] |= RX8025_BIT_XST;
   regmap_write(ds1307->regmap,
         RX8025_REG_CTRL2 << 4 | 0x08,
         regs[1]);
   dev_warn(ds1307->dev,
     "oscillator stop detected - SET TIME!\n");
  }

  if (regs[1] & RX8025_BIT_PON) {
   regs[1] &= ~RX8025_BIT_PON;
   regmap_write(ds1307->regmap,
         RX8025_REG_CTRL2 << 4 | 0x08,
         regs[1]);
   dev_warn(ds1307->dev, "power-on detected\n");
  }

  if (regs[1] & RX8025_BIT_VDET) {
   regs[1] &= ~RX8025_BIT_VDET;
   regmap_write(ds1307->regmap,
         RX8025_REG_CTRL2 << 4 | 0x08,
         regs[1]);
   dev_warn(ds1307->dev, "voltage drop detected\n");
  }


  if (!(regs[0] & RX8025_BIT_2412)) {
   u8 hour;


   regmap_write(ds1307->regmap,
         RX8025_REG_CTRL1 << 4 | 0x08,
         regs[0] | RX8025_BIT_2412);

   err = regmap_bulk_read(ds1307->regmap,
            RX8025_REG_CTRL1 << 4 | 0x08,
            regs, 2);
   if (err) {
    dev_dbg(ds1307->dev, "read error %d\n", err);
    goto exit;
   }


   hour = bcd2bin(regs[DS1307_REG_HOUR]);
   if (hour == 12)
    hour = 0;
   if (regs[DS1307_REG_HOUR] & DS1307_BIT_PM)
    hour += 12;

   regmap_write(ds1307->regmap,
         DS1307_REG_HOUR << 4 | 0x08, hour);
  }
  break;
 default:
  break;
 }


 err = regmap_bulk_read(ds1307->regmap, chip->offset, regs,
          sizeof(regs));
 if (err) {
  dev_dbg(ds1307->dev, "read error %d\n", err);
  goto exit;
 }

 if (ds1307->type == mcp794xx &&
     !(regs[DS1307_REG_WDAY] & MCP794XX_BIT_VBATEN)) {
  regmap_write(ds1307->regmap, DS1307_REG_WDAY,
        regs[DS1307_REG_WDAY] |
        MCP794XX_BIT_VBATEN);
 }

 tmp = regs[DS1307_REG_HOUR];
 switch (ds1307->type) {
 case 134:
 case 131:
 case 130:
 case 129:




  break;
 case 128:
  break;
 default:
  if (!(tmp & DS1307_BIT_12HR))
   break;





  tmp = bcd2bin(tmp & 0x1f);
  if (tmp == 12)
   tmp = 0;
  if (regs[DS1307_REG_HOUR] & DS1307_BIT_PM)
   tmp += 12;
  regmap_write(ds1307->regmap, chip->offset + DS1307_REG_HOUR,
        bin2bcd(tmp));
 }

 if (want_irq || ds1307_can_wakeup_device) {
  device_set_wakeup_capable(ds1307->dev, 1);
  set_bit(HAS_ALARM, &ds1307->flags);
 }

 ds1307->rtc = devm_rtc_allocate_device(ds1307->dev);
 if (IS_ERR(ds1307->rtc))
  return PTR_ERR(ds1307->rtc);

 if (ds1307_can_wakeup_device && !want_irq) {
  dev_info(ds1307->dev,
    "'wakeup-source' is set, request for an IRQ is disabled!\n");

  ds1307->rtc->uie_unsupported = 1;
 }

 if (want_irq) {
  err = devm_request_threaded_irq(ds1307->dev, client->irq, ((void*)0),
      chip->irq_handler ?: ds1307_irq,
      IRQF_SHARED | IRQF_ONESHOT,
      ds1307->name, ds1307);
  if (err) {
   client->irq = 0;
   device_set_wakeup_capable(ds1307->dev, 0);
   clear_bit(HAS_ALARM, &ds1307->flags);
   dev_err(ds1307->dev, "unable to request IRQ!\n");
  } else {
   dev_dbg(ds1307->dev, "got IRQ %d\n", client->irq);
  }
 }

 ds1307->rtc->ops = chip->rtc_ops ?: &ds13xx_rtc_ops;
 err = ds1307_add_frequency_test(ds1307);
 if (err)
  return err;

 err = rtc_register_device(ds1307->rtc);
 if (err)
  return err;

 if (chip->nvram_size) {
  struct nvmem_config nvmem_cfg = {
   .name = "ds1307_nvram",
   .word_size = 1,
   .stride = 1,
   .size = chip->nvram_size,
   .reg_read = ds1307_nvram_read,
   .reg_write = ds1307_nvram_write,
   .priv = ds1307,
  };

  ds1307->rtc->nvram_old_abi = 1;
  rtc_nvmem_register(ds1307->rtc, &nvmem_cfg);
 }

 ds1307_hwmon_register(ds1307);
 ds1307_clks_register(ds1307);

 return 0;

exit:
 return err;
}
