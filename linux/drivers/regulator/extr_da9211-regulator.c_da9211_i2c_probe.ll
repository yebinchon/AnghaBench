; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.da9211 = type { i32, %struct.TYPE_6__*, i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9211_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@DA9211_REG_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to read DEVICE_ID reg: %d\0A\00", align 1
@DA9211 = common dso_local global i32 0, align 4
@DA9213 = common dso_local global i32 0, align 4
@DA9215 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unsupported device id = 0x%x.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"No regulators defined for the platform\0A\00", align 1
@da9211_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"da9211\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to initialize regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da9211_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9211_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da9211*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.da9211* @devm_kzalloc(%struct.TYPE_6__* %11, i32 40, i32 %12)
  store %struct.da9211* %13, %struct.da9211** %6, align 8
  %14 = load %struct.da9211*, %struct.da9211** %6, align 8
  %15 = icmp ne %struct.da9211* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %170

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load %struct.da9211*, %struct.da9211** %6, align 8
  %23 = getelementptr inbounds %struct.da9211, %struct.da9211* %22, i32 0, i32 1
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i64 @devm_regmap_init_i2c(%struct.i2c_client* %24, i32* @da9211_regmap_config)
  %26 = load %struct.da9211*, %struct.da9211** %6, align 8
  %27 = getelementptr inbounds %struct.da9211, %struct.da9211* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load %struct.da9211*, %struct.da9211** %6, align 8
  %29 = getelementptr inbounds %struct.da9211, %struct.da9211* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @IS_ERR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %19
  %34 = load %struct.da9211*, %struct.da9211** %6, align 8
  %35 = getelementptr inbounds %struct.da9211, %struct.da9211* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @PTR_ERR(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.da9211*, %struct.da9211** %6, align 8
  %39 = getelementptr inbounds %struct.da9211, %struct.da9211* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %170

44:                                               ; preds = %19
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load %struct.da9211*, %struct.da9211** %6, align 8
  %47 = call i32 @i2c_set_clientdata(%struct.i2c_client* %45, %struct.da9211* %46)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.da9211*, %struct.da9211** %6, align 8
  %53 = getelementptr inbounds %struct.da9211, %struct.da9211* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.da9211*, %struct.da9211** %6, align 8
  %55 = getelementptr inbounds %struct.da9211, %struct.da9211* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @DA9211_REG_DEVICE_ID, align 4
  %58 = call i32 @regmap_read(i64 %56, i32 %57, i32* %9)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = load %struct.da9211*, %struct.da9211** %6, align 8
  %63 = getelementptr inbounds %struct.da9211, %struct.da9211* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %170

68:                                               ; preds = %44
  %69 = load i32, i32* %9, align 4
  switch i32 %69, label %82 [
    i32 130, label %70
    i32 129, label %74
    i32 128, label %78
  ]

70:                                               ; preds = %68
  %71 = load i32, i32* @DA9211, align 4
  %72 = load %struct.da9211*, %struct.da9211** %6, align 8
  %73 = getelementptr inbounds %struct.da9211, %struct.da9211* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  br label %90

74:                                               ; preds = %68
  %75 = load i32, i32* @DA9213, align 4
  %76 = load %struct.da9211*, %struct.da9211** %6, align 8
  %77 = getelementptr inbounds %struct.da9211, %struct.da9211* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  br label %90

78:                                               ; preds = %68
  %79 = load i32, i32* @DA9215, align 4
  %80 = load %struct.da9211*, %struct.da9211** %6, align 8
  %81 = getelementptr inbounds %struct.da9211, %struct.da9211* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %90

82:                                               ; preds = %68
  %83 = load %struct.da9211*, %struct.da9211** %6, align 8
  %84 = getelementptr inbounds %struct.da9211, %struct.da9211* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %170

90:                                               ; preds = %78, %74, %70
  %91 = load %struct.da9211*, %struct.da9211** %6, align 8
  %92 = getelementptr inbounds %struct.da9211, %struct.da9211* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load %struct.da9211*, %struct.da9211** %6, align 8
  %97 = getelementptr inbounds %struct.da9211, %struct.da9211* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i64 @da9211_parse_regulators_dt(%struct.TYPE_6__* %98)
  %100 = load %struct.da9211*, %struct.da9211** %6, align 8
  %101 = getelementptr inbounds %struct.da9211, %struct.da9211* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %90
  %103 = load %struct.da9211*, %struct.da9211** %6, align 8
  %104 = getelementptr inbounds %struct.da9211, %struct.da9211* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @IS_ERR(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load %struct.da9211*, %struct.da9211** %6, align 8
  %110 = getelementptr inbounds %struct.da9211, %struct.da9211* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.da9211*, %struct.da9211** %6, align 8
  %114 = getelementptr inbounds %struct.da9211, %struct.da9211* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @PTR_ERR(i64 %115)
  store i32 %116, i32* %3, align 4
  br label %170

117:                                              ; preds = %102
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.da9211*, %struct.da9211** %6, align 8
  %122 = getelementptr inbounds %struct.da9211, %struct.da9211* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.da9211*, %struct.da9211** %6, align 8
  %124 = getelementptr inbounds %struct.da9211, %struct.da9211* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %117
  %128 = load %struct.da9211*, %struct.da9211** %6, align 8
  %129 = getelementptr inbounds %struct.da9211, %struct.da9211* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load %struct.da9211*, %struct.da9211** %6, align 8
  %132 = getelementptr inbounds %struct.da9211, %struct.da9211* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @da9211_irq_handler, align 4
  %135 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %136 = load i32, i32* @IRQF_ONESHOT, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.da9211*, %struct.da9211** %6, align 8
  %139 = call i32 @devm_request_threaded_irq(%struct.TYPE_6__* %130, i32 %133, i32* null, i32 %134, i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.da9211* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %127
  %143 = load %struct.da9211*, %struct.da9211** %6, align 8
  %144 = getelementptr inbounds %struct.da9211, %struct.da9211* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load %struct.da9211*, %struct.da9211** %6, align 8
  %147 = getelementptr inbounds %struct.da9211, %struct.da9211* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %3, align 4
  br label %170

151:                                              ; preds = %127
  br label %157

152:                                              ; preds = %117
  %153 = load %struct.da9211*, %struct.da9211** %6, align 8
  %154 = getelementptr inbounds %struct.da9211, %struct.da9211* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = call i32 @dev_warn(%struct.TYPE_6__* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %157

157:                                              ; preds = %152, %151
  %158 = load %struct.da9211*, %struct.da9211** %6, align 8
  %159 = call i32 @da9211_regulator_init(%struct.da9211* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.da9211*, %struct.da9211** %6, align 8
  %164 = getelementptr inbounds %struct.da9211, %struct.da9211* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %165, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %162, %157
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %142, %108, %82, %61, %33, %16
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.da9211* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da9211*) #1

declare dso_local i32 @regmap_read(i64, i32, i32*) #1

declare dso_local i64 @da9211_parse_regulators_dt(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_6__*, i32, i32*, i32, i32, i8*, %struct.da9211*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @da9211_regulator_init(%struct.da9211*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
