; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.i2c_client = type { i64, i32 }
%struct.rv3028_data = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.nvmem_config = type { i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"rv3028_nvram\00", align 1
@rv3028_nvram_write = common dso_local global i32 0, align 4
@rv3028_nvram_read = common dso_local global i32 0, align 4
@NVMEM_TYPE_BATTERY_BACKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"rv3028_eeprom\00", align 1
@rv3028_eeprom_write = common dso_local global i32 0, align 4
@rv3028_eeprom_read = common dso_local global i32 0, align 4
@NVMEM_TYPE_EEPROM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regmap_config = common dso_local global i32 0, align 4
@RV3028_STATUS = common dso_local global i32 0, align 4
@RV3028_STATUS_PORF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Voltage low, data loss detected.\0A\00", align 1
@RV3028_STATUS_AF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"An alarm may have been missed.\0A\00", align 1
@rv3028_handle_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"rv3028\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", align 1
@rv3028_get_alarm = common dso_local global i32 0, align 4
@rv3028_rtc_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@rv3028_set_alarm = common dso_local global i32 0, align 4
@rv3028_alarm_irq_enable = common dso_local global i32 0, align 4
@RV3028_CTRL1 = common dso_local global i32 0, align 4
@RV3028_CTRL1_WADA = common dso_local global i32 0, align 4
@RV3028_CTRL2 = common dso_local global i32 0, align 4
@RV3028_CTRL2_EIE = common dso_local global i32 0, align 4
@RV3028_CTRL2_TSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"trickle-resistor-ohms\00", align 1
@rv3028_trickle_resistors = common dso_local global i64* null, align 8
@RV3028_BACKUP = common dso_local global i32 0, align 4
@RV3028_BACKUP_TCE = common dso_local global i32 0, align 4
@RV3028_BACKUP_TCR_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"invalid trickle resistor value\0A\00", align 1
@rv3028_attr_group = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rv3028_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.rv3028_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmem_config, align 8
  %9 = alloca %struct.nvmem_config, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 1
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 2
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 3
  store i32 2, i32* %14, align 8
  %15 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 4
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 5
  %17 = load i32, i32* @rv3028_nvram_write, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 6
  %19 = load i32, i32* @rv3028_nvram_read, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 7
  %21 = load i32, i32* @NVMEM_TYPE_BATTERY_BACKED, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 1
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 2
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 3
  store i32 43, i32* %25, align 8
  %26 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 4
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 5
  %28 = load i32, i32* @rv3028_eeprom_write, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 6
  %30 = load i32, i32* @rv3028_eeprom_read, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 7
  %32 = load i32, i32* @NVMEM_TYPE_EEPROM, align 4
  store i32 %32, i32* %31, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.rv3028_data* @devm_kzalloc(i32* %34, i32 16, i32 %35)
  store %struct.rv3028_data* %36, %struct.rv3028_data** %4, align 8
  %37 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %38 = icmp ne %struct.rv3028_data* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %255

42:                                               ; preds = %1
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %43, i32* @regmap_config)
  %45 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %46 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %49 = call i32 @i2c_set_clientdata(%struct.i2c_client* %47, %struct.rv3028_data* %48)
  %50 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %51 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RV3028_STATUS, align 4
  %54 = call i32 @regmap_read(i32 %52, i32 %53, i32* %6)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %255

59:                                               ; preds = %42
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @RV3028_STATUS_PORF, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 1
  %67 = call i32 @dev_warn(i32* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @RV3028_STATUS_AF, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 1
  %80 = call %struct.TYPE_9__* @devm_rtc_allocate_device(i32* %79)
  %81 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %82 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %81, i32 0, i32 0
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %82, align 8
  %83 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %84 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = call i64 @IS_ERR(%struct.TYPE_9__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %90 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = call i32 @PTR_ERR(%struct.TYPE_9__* %91)
  store i32 %92, i32* %2, align 4
  br label %255

93:                                               ; preds = %77
  %94 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %93
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 1
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @rv3028_handle_irq, align 4
  %105 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %106 = load i32, i32* @IRQF_ONESHOT, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %109 = call i32 @devm_request_threaded_irq(i32* %100, i64 %103, i32* null, i32 %104, i32 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.rv3028_data* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %98
  %113 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 1
  %115 = call i32 @dev_warn(i32* %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %122

118:                                              ; preds = %98
  %119 = load i32, i32* @rv3028_get_alarm, align 4
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rv3028_rtc_ops, i32 0, i32 2), align 4
  %120 = load i32, i32* @rv3028_set_alarm, align 4
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rv3028_rtc_ops, i32 0, i32 1), align 4
  %121 = load i32, i32* @rv3028_alarm_irq_enable, align 4
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rv3028_rtc_ops, i32 0, i32 0), align 4
  br label %122

122:                                              ; preds = %118, %112
  br label %123

123:                                              ; preds = %122, %93
  %124 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %125 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @RV3028_CTRL1, align 4
  %128 = load i32, i32* @RV3028_CTRL1_WADA, align 4
  %129 = load i32, i32* @RV3028_CTRL1_WADA, align 4
  %130 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %2, align 4
  br label %255

135:                                              ; preds = %123
  %136 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %137 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @RV3028_CTRL2, align 4
  %140 = load i32, i32* @RV3028_CTRL2_EIE, align 4
  %141 = load i32, i32* @RV3028_CTRL2_TSE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @RV3028_CTRL2_EIE, align 4
  %144 = load i32, i32* @RV3028_CTRL2_TSE, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @regmap_update_bits(i32 %138, i32 %139, i32 %142, i32 %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %135
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %2, align 4
  br label %255

151:                                              ; preds = %135
  %152 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 1
  %154 = call i32 @device_property_read_u32(i32* %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64* %7)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %202, label %156

156:                                              ; preds = %151
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %172, %156
  %158 = load i32, i32* %10, align 4
  %159 = load i64*, i64** @rv3028_trickle_resistors, align 8
  %160 = call i32 @ARRAY_SIZE(i64* %159)
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %157
  %163 = load i64, i64* %7, align 8
  %164 = load i64*, i64** @rv3028_trickle_resistors, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %163, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %175

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %157

175:                                              ; preds = %170, %157
  %176 = load i32, i32* %10, align 4
  %177 = load i64*, i64** @rv3028_trickle_resistors, align 8
  %178 = call i32 @ARRAY_SIZE(i64* %177)
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %175
  %181 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %182 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @RV3028_BACKUP, align 4
  %185 = load i32, i32* @RV3028_BACKUP_TCE, align 4
  %186 = load i32, i32* @RV3028_BACKUP_TCR_MASK, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @RV3028_BACKUP_TCE, align 4
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @regmap_update_bits(i32 %183, i32 %184, i32 %187, i32 %190)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %180
  %195 = load i32, i32* %5, align 4
  store i32 %195, i32* %2, align 4
  br label %255

196:                                              ; preds = %180
  br label %201

197:                                              ; preds = %175
  %198 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %199 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %198, i32 0, i32 1
  %200 = call i32 @dev_warn(i32* %199, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %196
  br label %202

202:                                              ; preds = %201, %151
  %203 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %204 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = call i32 @rtc_add_group(%struct.TYPE_9__* %205, i32* @rv3028_attr_group)
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = load i32, i32* %5, align 4
  store i32 %210, i32* %2, align 4
  br label %255

211:                                              ; preds = %202
  %212 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %213 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %214 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %213, i32 0, i32 0
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 3
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %218 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %219 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %218, i32 0, i32 0
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  store i32 %217, i32* %221, align 8
  %222 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %223 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %222, i32 0, i32 0
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  store %struct.TYPE_8__* @rv3028_rtc_ops, %struct.TYPE_8__** %225, align 8
  %226 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %227 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %226, i32 0, i32 0
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = call i32 @rtc_register_device(%struct.TYPE_9__* %228)
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %211
  %233 = load i32, i32* %5, align 4
  store i32 %233, i32* %2, align 4
  br label %255

234:                                              ; preds = %211
  %235 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %236 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 4
  store i32 %237, i32* %238, align 4
  %239 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %240 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %239, i32 0, i32 0
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = call i32 @rtc_nvmem_register(%struct.TYPE_9__* %241, %struct.nvmem_config* %8)
  %243 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %244 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 4
  store i32 %245, i32* %246, align 4
  %247 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %248 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %247, i32 0, i32 0
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = call i32 @rtc_nvmem_register(%struct.TYPE_9__* %249, %struct.nvmem_config* %9)
  %251 = load %struct.rv3028_data*, %struct.rv3028_data** %4, align 8
  %252 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %251, i32 0, i32 0
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %234, %232, %209, %194, %149, %133, %88, %57, %39
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local %struct.rv3028_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rv3028_data*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.rv3028_data*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @rtc_add_group(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_9__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_9__*, %struct.nvmem_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
