; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_gpio_backlight.c_gpio_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_gpio_backlight.c_gpio_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.gpio_backlight_platform_data = type { i8*, i32, i64, i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.backlight_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.gpio_backlight = type { i32, %struct.TYPE_10__*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOF_DIR_OUT = common dso_local global i64 0, align 8
@GPIOF_INIT_HIGH = common dso_local global i64 0, align 8
@GPIOF_INIT_LOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to request GPIO\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to find platform data or device tree node.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@gpio_backlight_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_backlight_platform_data*, align 8
  %5 = alloca %struct.backlight_properties, align 4
  %6 = alloca %struct.backlight_device*, align 8
  %7 = alloca %struct.gpio_backlight*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.gpio_backlight_platform_data* @dev_get_platdata(%struct.TYPE_10__* %11)
  store %struct.gpio_backlight_platform_data* %12, %struct.gpio_backlight_platform_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.gpio_backlight* @devm_kzalloc(%struct.TYPE_10__* %14, i32 32, i32 %15)
  store %struct.gpio_backlight* %16, %struct.gpio_backlight** %7, align 8
  %17 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %18 = icmp eq %struct.gpio_backlight* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %151

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %26 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %25, i32 0, i32 1
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %35 = call i32 @gpio_backlight_probe_dt(%struct.platform_device* %33, %struct.gpio_backlight* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %151

40:                                               ; preds = %32
  br label %114

41:                                               ; preds = %22
  %42 = load %struct.gpio_backlight_platform_data*, %struct.gpio_backlight_platform_data** %4, align 8
  %43 = icmp ne %struct.gpio_backlight_platform_data* %42, null
  br i1 %43, label %44, label %107

44:                                               ; preds = %41
  %45 = load i64, i64* @GPIOF_DIR_OUT, align 8
  store i64 %45, i64* %9, align 8
  %46 = load %struct.gpio_backlight_platform_data*, %struct.gpio_backlight_platform_data** %4, align 8
  %47 = getelementptr inbounds %struct.gpio_backlight_platform_data, %struct.gpio_backlight_platform_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %50 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.gpio_backlight_platform_data*, %struct.gpio_backlight_platform_data** %4, align 8
  %52 = getelementptr inbounds %struct.gpio_backlight_platform_data, %struct.gpio_backlight_platform_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %55 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %57 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i64, i64* @GPIOF_INIT_HIGH, align 8
  br label %64

62:                                               ; preds = %44
  %63 = load i64, i64* @GPIOF_INIT_LOW, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = load i64, i64* %9, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %9, align 8
  %68 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %69 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load %struct.gpio_backlight_platform_data*, %struct.gpio_backlight_platform_data** %4, align 8
  %72 = getelementptr inbounds %struct.gpio_backlight_platform_data, %struct.gpio_backlight_platform_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.gpio_backlight_platform_data*, %struct.gpio_backlight_platform_data** %4, align 8
  %76 = icmp ne %struct.gpio_backlight_platform_data* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load %struct.gpio_backlight_platform_data*, %struct.gpio_backlight_platform_data** %4, align 8
  %79 = getelementptr inbounds %struct.gpio_backlight_platform_data, %struct.gpio_backlight_platform_data* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  br label %82

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i8* [ %80, %77 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %81 ]
  %84 = call i32 @devm_gpio_request_one(%struct.TYPE_10__* %70, i32 %73, i64 %74, i8* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_err(%struct.TYPE_10__* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %151

92:                                               ; preds = %82
  %93 = load %struct.gpio_backlight_platform_data*, %struct.gpio_backlight_platform_data** %4, align 8
  %94 = getelementptr inbounds %struct.gpio_backlight_platform_data, %struct.gpio_backlight_platform_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @gpio_to_desc(i32 %95)
  %97 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %98 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %100 = getelementptr inbounds %struct.gpio_backlight, %struct.gpio_backlight* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %92
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %151

106:                                              ; preds = %92
  br label %113

107:                                              ; preds = %41
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @dev_err(%struct.TYPE_10__* %109, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %151

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %40
  %115 = call i32 @memset(%struct.backlight_properties* %5, i32 0, i32 8)
  %116 = load i32, i32* @BACKLIGHT_RAW, align 4
  %117 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  store i32 1, i32* %118, align 4
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @dev_name(%struct.TYPE_10__* %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %127 = call %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_10__* %120, i32 %123, %struct.TYPE_10__* %125, %struct.gpio_backlight* %126, i32* @gpio_backlight_ops, %struct.backlight_properties* %5)
  store %struct.backlight_device* %127, %struct.backlight_device** %6, align 8
  %128 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %129 = call i64 @IS_ERR(%struct.backlight_device* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %114
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_err(%struct.TYPE_10__* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %135 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %136 = call i32 @PTR_ERR(%struct.backlight_device* %135)
  store i32 %136, i32* %2, align 4
  br label %151

137:                                              ; preds = %114
  %138 = load %struct.gpio_backlight*, %struct.gpio_backlight** %7, align 8
  %139 = call i32 @gpio_backlight_initial_power_state(%struct.gpio_backlight* %138)
  %140 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %141 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %144 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 4
  %146 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %147 = call i32 @backlight_update_status(%struct.backlight_device* %146)
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %150 = call i32 @platform_set_drvdata(%struct.platform_device* %148, %struct.backlight_device* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %137, %131, %107, %103, %87, %38, %19
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.gpio_backlight_platform_data* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local %struct.gpio_backlight* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @gpio_backlight_probe_dt(%struct.platform_device*, %struct.gpio_backlight*) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_10__*, i32, i64, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @gpio_to_desc(i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_10__*, i32, %struct.TYPE_10__*, %struct.gpio_backlight*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @gpio_backlight_initial_power_state(%struct.gpio_backlight*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
