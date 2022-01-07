; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.qpnp_tm_chip = type { i32*, i64, i32, i32*, i32, i32, %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"thermal\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@QPNP_TM_REG_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"could not read type\0A\00", align 1
@QPNP_TM_REG_SUBTYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"could not read subtype\0A\00", align 1
@QPNP_TM_TYPE = common dso_local global i64 0, align 8
@QPNP_TM_SUBTYPE_GEN1 = common dso_local global i64 0, align 8
@QPNP_TM_SUBTYPE_GEN2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"invalid type 0x%02x or subtype 0x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@qpnp_tm_sensor_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to register sensor\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"init failed\0A\00", align 1
@qpnp_tm_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qpnp_tm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpnp_tm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qpnp_tm_chip*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.qpnp_tm_chip* @devm_kzalloc(%struct.TYPE_7__* %16, i32 48, i32 %17)
  store %struct.qpnp_tm_chip* %18, %struct.qpnp_tm_chip** %4, align 8
  %19 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %20 = icmp ne %struct.qpnp_tm_chip* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %188

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %28 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %26, %struct.qpnp_tm_chip* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %32 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %31, i32 0, i32 6
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %32, align 8
  %33 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %34 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %33, i32 0, i32 5
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_get_regmap(i32 %39, i32* null)
  %41 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %42 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %44 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %24
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %188

50:                                               ; preds = %24
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = call i32 @of_property_read_u32(%struct.device_node* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %188

57:                                               ; preds = %50
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @platform_get_irq(%struct.platform_device* %58, i32 0)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %2, align 4
  br label %188

64:                                               ; preds = %57
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32* @devm_iio_channel_get(%struct.TYPE_7__* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %69 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %68, i32 0, i32 3
  store i32* %67, i32** %69, align 8
  %70 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %71 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @IS_ERR(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %64
  %76 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %77 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @PTR_ERR(i32* %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %81 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %80, i32 0, i32 3
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @EPROBE_DEFER, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %2, align 4
  br label %188

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %92 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %94 = load i32, i32* @QPNP_TM_REG_TYPE, align 4
  %95 = call i32 @qpnp_tm_read(%struct.qpnp_tm_chip* %93, i32 %94, i64* %6)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %2, align 4
  br label %188

103:                                              ; preds = %89
  %104 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %105 = load i32, i32* @QPNP_TM_REG_SUBTYPE, align 4
  %106 = call i32 @qpnp_tm_read(%struct.qpnp_tm_chip* %104, i32 %105, i64* %7)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %188

114:                                              ; preds = %103
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @QPNP_TM_TYPE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* @QPNP_TM_SUBTYPE_GEN1, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @QPNP_TM_SUBTYPE_GEN2, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122, %114
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %129, i64 %130)
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %188

134:                                              ; preds = %122, %118
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %137 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %141 = call i32* @devm_thermal_zone_of_sensor_register(%struct.TYPE_7__* %139, i32 0, %struct.qpnp_tm_chip* %140, i32* @qpnp_tm_sensor_ops)
  %142 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %143 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %142, i32 0, i32 0
  store i32* %141, i32** %143, align 8
  %144 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %145 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @IS_ERR(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %134
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %153 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %154 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @PTR_ERR(i32* %155)
  store i32 %156, i32* %2, align 4
  br label %188

157:                                              ; preds = %134
  %158 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %159 = call i32 @qpnp_tm_init(%struct.qpnp_tm_chip* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %2, align 4
  br label %188

167:                                              ; preds = %157
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @qpnp_tm_isr, align 4
  %172 = load i32, i32* @IRQF_ONESHOT, align 4
  %173 = load %struct.device_node*, %struct.device_node** %5, align 8
  %174 = getelementptr inbounds %struct.device_node, %struct.device_node* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %177 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %169, i32 %170, i32* null, i32 %171, i32 %172, i32 %175, %struct.qpnp_tm_chip* %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %167
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %2, align 4
  br label %188

182:                                              ; preds = %167
  %183 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %4, align 8
  %184 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %187 = call i32 @thermal_zone_device_update(i32* %185, i32 %186)
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %182, %180, %162, %149, %126, %109, %98, %86, %62, %55, %47, %21
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.qpnp_tm_chip* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.qpnp_tm_chip*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @devm_iio_channel_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @qpnp_tm_read(%struct.qpnp_tm_chip*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32* @devm_thermal_zone_of_sensor_register(%struct.TYPE_7__*, i32, %struct.qpnp_tm_chip*, i32*) #1

declare dso_local i32 @qpnp_tm_init(%struct.qpnp_tm_chip*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i32, i32*, i32, i32, i32, %struct.qpnp_tm_chip*) #1

declare dso_local i32 @thermal_zone_device_update(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
