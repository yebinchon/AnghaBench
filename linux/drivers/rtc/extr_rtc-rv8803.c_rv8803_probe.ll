; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.i2c_client = type { i64, %struct.TYPE_15__, %struct.i2c_adapter* }
%struct.TYPE_15__ = type { i64 }
%struct.i2c_adapter = type { %struct.TYPE_15__ }
%struct.i2c_device_id = type { i32 }
%struct.rv8803_data = type { i32, %struct.TYPE_14__*, %struct.i2c_client*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.nvmem_config = type { i8*, i32, i32, i32, %struct.i2c_client*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"rv8803_nvram\00", align 1
@rv8803_nvram_write = common dso_local global i32 0, align 4
@rv8803_nvram_read = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"doesn't support I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_I2C_BLOCK\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RV8803_FLAG = common dso_local global i32 0, align 4
@RV8803_FLAG_V1F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Voltage low, temperature compensation stopped.\0A\00", align 1
@RV8803_FLAG_V2F = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Voltage low, data loss detected.\0A\00", align 1
@RV8803_FLAG_AF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"An alarm maybe have been missed.\0A\00", align 1
@rv8803_handle_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"rv8803\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", align 1
@rv8803_get_alarm = common dso_local global i32 0, align 4
@rv8803_rtc_ops = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@rv8803_set_alarm = common dso_local global i32 0, align 4
@rv8803_alarm_irq_enable = common dso_local global i32 0, align 4
@RV8803_EXT = common dso_local global i32 0, align 4
@RV8803_EXT_WADA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to init charger\0A\00", align 1
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rv8803_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv8803_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.rv8803_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvmem_config, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 3
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %18, align 8
  %20 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 5
  %21 = load i32, i32* @rv8803_nvram_write, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 6
  %23 = load i32, i32* @rv8803_nvram_read, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %25 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %26 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_15__* %32, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %212

36:                                               ; preds = %2
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.rv8803_data* @devm_kzalloc(%struct.TYPE_15__* %38, i32 32, i32 %39)
  store %struct.rv8803_data* %40, %struct.rv8803_data** %7, align 8
  %41 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %42 = icmp ne %struct.rv8803_data* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %212

46:                                               ; preds = %36
  %47 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %48 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %47, i32 0, i32 3
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %52 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %51, i32 0, i32 2
  store %struct.i2c_client* %50, %struct.i2c_client** %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 1
  %61 = call i64 @of_device_get_match_data(%struct.TYPE_15__* %60)
  %62 = trunc i64 %61 to i32
  %63 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %64 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %71

65:                                               ; preds = %46
  %66 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %70 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %74 = call i32 @i2c_set_clientdata(%struct.i2c_client* %72, %struct.rv8803_data* %73)
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load i32, i32* @RV8803_FLAG, align 4
  %77 = call i32 @rv8803_read_reg(%struct.i2c_client* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %212

82:                                               ; preds = %71
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @RV8803_FLAG_V1F, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 1
  %90 = call i32 @dev_warn(%struct.TYPE_15__* %89, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @RV8803_FLAG_V2F, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 1
  %99 = call i32 @dev_warn(%struct.TYPE_15__* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @RV8803_FLAG_AF, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 1
  %108 = call i32 @dev_warn(%struct.TYPE_15__* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 1
  %112 = call %struct.TYPE_14__* @devm_rtc_allocate_device(%struct.TYPE_15__* %111)
  %113 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %114 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %113, i32 0, i32 1
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %114, align 8
  %115 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %116 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = call i64 @IS_ERR(%struct.TYPE_14__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %109
  %121 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %122 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = call i32 @PTR_ERR(%struct.TYPE_14__* %123)
  store i32 %124, i32* %3, align 4
  br label %212

125:                                              ; preds = %109
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %125
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 1
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @rv8803_handle_irq, align 4
  %137 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %138 = load i32, i32* @IRQF_ONESHOT, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = call i32 @devm_request_threaded_irq(%struct.TYPE_15__* %132, i64 %135, i32* null, i32 %136, i32 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.i2c_client* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %130
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 1
  %147 = call i32 @dev_warn(%struct.TYPE_15__* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  br label %154

150:                                              ; preds = %130
  %151 = load i32, i32* @rv8803_get_alarm, align 4
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rv8803_rtc_ops, i32 0, i32 2), align 4
  %152 = load i32, i32* @rv8803_set_alarm, align 4
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rv8803_rtc_ops, i32 0, i32 1), align 4
  %153 = load i32, i32* @rv8803_alarm_irq_enable, align 4
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rv8803_rtc_ops, i32 0, i32 0), align 4
  br label %154

154:                                              ; preds = %150, %144
  br label %155

155:                                              ; preds = %154, %125
  %156 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %157 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %156, i32 0, i32 2
  %158 = load %struct.i2c_client*, %struct.i2c_client** %157, align 8
  %159 = load i32, i32* @RV8803_EXT, align 4
  %160 = load i32, i32* @RV8803_EXT_WADA, align 4
  %161 = call i32 @rv8803_write_reg(%struct.i2c_client* %158, i32 %159, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %3, align 4
  br label %212

166:                                              ; preds = %155
  %167 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %168 = call i32 @rx8900_trickle_charger_init(%struct.rv8803_data* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 1
  %174 = call i32 @dev_err(%struct.TYPE_15__* %173, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %3, align 4
  br label %212

176:                                              ; preds = %166
  %177 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %178 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %177, i32 0, i32 1
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 4
  store %struct.TYPE_13__* @rv8803_rtc_ops, %struct.TYPE_13__** %180, align 8
  %181 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %182 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %181, i32 0, i32 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  %185 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %186 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %187 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %186, i32 0, i32 1
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 3
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %191 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %192 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %191, i32 0, i32 1
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  store i32 %190, i32* %194, align 8
  %195 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %196 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %195, i32 0, i32 1
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = call i32 @rtc_register_device(%struct.TYPE_14__* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %176
  %202 = load i32, i32* %8, align 4
  store i32 %202, i32* %3, align 4
  br label %212

203:                                              ; preds = %176
  %204 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %205 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %204, i32 0, i32 1
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %205, align 8
  %207 = call i32 @rtc_nvmem_register(%struct.TYPE_14__* %206, %struct.nvmem_config* %10)
  %208 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %209 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %208, i32 0, i32 1
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  store i32 1, i32* %211, align 4
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %203, %201, %171, %164, %120, %80, %43, %30
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.rv8803_data* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_15__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rv8803_data*) #1

declare dso_local i32 @rv8803_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_14__* @devm_rtc_allocate_device(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_15__*, i64, i32*, i32, i32, i8*, %struct.i2c_client*) #1

declare dso_local i32 @rv8803_write_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @rx8900_trickle_charger_init(%struct.rv8803_data*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_14__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_14__*, %struct.nvmem_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
