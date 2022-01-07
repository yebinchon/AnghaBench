; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.i2c_client = type { i64, %struct.TYPE_16__, %struct.i2c_adapter* }
%struct.TYPE_16__ = type { i64 }
%struct.i2c_adapter = type { %struct.TYPE_16__ }
%struct.i2c_device_id = type { i64 }
%struct.rtc_time = type { i32 }
%struct.m41t80_data = type { i64, %struct.TYPE_15__*, %struct.i2c_client* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }

@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"doesn't support I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_I2C_BLOCK\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@m41t80_handle_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"m41t80\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", align 1
@m41t80_read_alarm = common dso_local global i32 0, align 4
@m41t80_rtc_ops = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@m41t80_set_alarm = common dso_local global i32 0, align 4
@m41t80_alarm_irq_enable = common dso_local global i32 0, align 4
@M41T80_REG_ALARM_HOUR = common dso_local global i32 0, align 4
@M41T80_ALHOUR_HT = common dso_local global i32 0, align 4
@M41T80_FEATURE_HT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"HT bit was set!\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Power Down at %ptR\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Can't clear HT bit\0A\00", align 1
@M41T80_REG_SEC = common dso_local global i32 0, align 4
@M41T80_SEC_ST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Can't clear ST bit\0A\00", align 1
@M41T80_FEATURE_SQ = common dso_local global i32 0, align 4
@save_client = common dso_local global %struct.i2c_client* null, align 8
@wdt_dev = common dso_local global i32 0, align 4
@wdt_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @m41t80_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t80_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtc_time, align 4
  %9 = alloca %struct.m41t80_data*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.m41t80_data* null, %struct.m41t80_data** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 2
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %23, i32 0, i32 0
  %25 = call i32 @dev_err(%struct.TYPE_16__* %24, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %215

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.m41t80_data* @devm_kzalloc(%struct.TYPE_16__* %30, i32 24, i32 %31)
  store %struct.m41t80_data* %32, %struct.m41t80_data** %9, align 8
  %33 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %34 = icmp ne %struct.m41t80_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %215

38:                                               ; preds = %28
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %41 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %40, i32 0, i32 2
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = call i64 @of_device_get_match_data(%struct.TYPE_16__* %49)
  %51 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %52 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %59

53:                                               ; preds = %38
  %54 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %58 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %62 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.m41t80_data* %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 1
  %65 = call %struct.TYPE_15__* @devm_rtc_allocate_device(%struct.TYPE_16__* %64)
  %66 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %67 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %66, i32 0, i32 1
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %67, align 8
  %68 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %69 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = call i64 @IS_ERR(%struct.TYPE_15__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %59
  %74 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %75 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = call i32 @PTR_ERR(%struct.TYPE_15__* %76)
  store i32 %77, i32* %3, align 4
  br label %215

78:                                               ; preds = %59
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 1
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @m41t80_handle_irq, align 4
  %90 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %91 = load i32, i32* @IRQF_ONESHOT, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = call i32 @devm_request_threaded_irq(%struct.TYPE_16__* %85, i64 %88, i32* null, i32 %89, i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.i2c_client* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %83
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 1
  %100 = call i32 @dev_warn(%struct.TYPE_16__* %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %97, %83
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109, %104
  %113 = load i32, i32* @m41t80_read_alarm, align 4
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @m41t80_rtc_ops, i32 0, i32 2), align 4
  %114 = load i32, i32* @m41t80_set_alarm, align 4
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @m41t80_rtc_ops, i32 0, i32 1), align 4
  %115 = load i32, i32* @m41t80_alarm_irq_enable, align 4
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @m41t80_rtc_ops, i32 0, i32 0), align 4
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 1
  %118 = call i32 @device_init_wakeup(%struct.TYPE_16__* %117, i32 1)
  br label %119

119:                                              ; preds = %112, %109
  %120 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %121 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %120, i32 0, i32 1
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  store %struct.TYPE_17__* @m41t80_rtc_ops, %struct.TYPE_17__** %123, align 8
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sle i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %130 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %129, i32 0, i32 1
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %128, %119
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = load i32, i32* @M41T80_REG_ALARM_HOUR, align 4
  %136 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %134, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %170

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @M41T80_ALHOUR_HT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %139
  %145 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %146 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @M41T80_FEATURE_HT, align 4
  %149 = sext i32 %148 to i64
  %150 = and i64 %147, %149
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %144
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 1
  %155 = call i32 @m41t80_rtc_read_time(%struct.TYPE_16__* %154, %struct.rtc_time* %8)
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 1
  %158 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_info(%struct.TYPE_16__* %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %159, i32 0, i32 1
  %161 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_info(%struct.TYPE_16__* %160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.rtc_time* %8)
  br label %162

162:                                              ; preds = %152, %144
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = load i32, i32* @M41T80_REG_ALARM_HOUR, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @M41T80_ALHOUR_HT, align 4
  %167 = xor i32 %166, -1
  %168 = and i32 %165, %167
  %169 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %163, i32 %164, i32 %168)
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %162, %139, %133
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 1
  %176 = call i32 @dev_err(%struct.TYPE_16__* %175, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %3, align 4
  br label %215

178:                                              ; preds = %170
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = load i32, i32* @M41T80_REG_SEC, align 4
  %181 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %179, i32 %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %178
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @M41T80_SEC_ST, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = load i32, i32* @M41T80_REG_SEC, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @M41T80_SEC_ST, align 4
  %194 = xor i32 %193, -1
  %195 = and i32 %192, %194
  %196 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %190, i32 %191, i32 %195)
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %189, %184, %178
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %202 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %201, i32 0, i32 1
  %203 = call i32 @dev_err(%struct.TYPE_16__* %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %3, align 4
  br label %215

205:                                              ; preds = %197
  %206 = load %struct.m41t80_data*, %struct.m41t80_data** %9, align 8
  %207 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %206, i32 0, i32 1
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = call i32 @rtc_register_device(%struct.TYPE_15__* %208)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = load i32, i32* %7, align 4
  store i32 %213, i32* %3, align 4
  br label %215

214:                                              ; preds = %205
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %214, %212, %200, %173, %73, %35, %22
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.m41t80_data* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_16__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.m41t80_data*) #1

declare dso_local %struct.TYPE_15__* @devm_rtc_allocate_device(%struct.TYPE_16__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_16__*, i64, i32*, i32, i32, i8*, %struct.i2c_client*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @m41t80_rtc_read_time(%struct.TYPE_16__*, %struct.rtc_time*) #1

declare dso_local i32 @dev_info(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
