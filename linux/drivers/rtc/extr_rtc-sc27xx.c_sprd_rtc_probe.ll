; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sprd_rtc = type { i64, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get RTC base address\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to check RTC alarm interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to check RTC time values\0A\00", align 1
@sprd_rtc_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_EARLY_RESUME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to request RTC irq\0A\00", align 1
@sprd_rtc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sprd_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sprd_rtc* @devm_kzalloc(%struct.TYPE_11__* %12, i32 32, i32 %13)
  store %struct.sprd_rtc* %14, %struct.sprd_rtc** %5, align 8
  %15 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %16 = icmp ne %struct.sprd_rtc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %155

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_get_regmap(i32 %24, i32* null)
  %26 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %29 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %155

35:                                               ; preds = %20
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %38 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %37, i32 0, i32 3
  %39 = call i32 @of_property_read_u32(%struct.device_node* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_11__* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %155

47:                                               ; preds = %35
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i64 @platform_get_irq(%struct.platform_device* %48, i32 0)
  %50 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %51 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %53 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %58 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %155

61:                                               ; preds = %47
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call %struct.TYPE_10__* @devm_rtc_allocate_device(%struct.TYPE_11__* %63)
  %65 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %66 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %65, i32 0, i32 1
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %66, align 8
  %67 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %68 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = call i64 @IS_ERR(%struct.TYPE_10__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %74 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.TYPE_10__* %75)
  store i32 %76, i32* %2, align 4
  br label %155

77:                                               ; preds = %61
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %81 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %80, i32 0, i32 2
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %84 = call i32 @platform_set_drvdata(%struct.platform_device* %82, %struct.sprd_rtc* %83)
  %85 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %86 = call i32 @sprd_rtc_check_alarm_int(%struct.sprd_rtc* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %77
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_11__* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %155

94:                                               ; preds = %77
  %95 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %96 = call i32 @sprd_rtc_check_power_down(%struct.sprd_rtc* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @dev_err(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %155

104:                                              ; preds = %94
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %108 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* @sprd_rtc_handler, align 4
  %112 = load i32, i32* @IRQF_ONESHOT, align 4
  %113 = load i32, i32* @IRQF_EARLY_RESUME, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %119 = call i32 @devm_request_threaded_irq(%struct.TYPE_11__* %106, i32 %110, i32* null, i32 %111, i32 %114, i32 %117, %struct.sprd_rtc* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %104
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(%struct.TYPE_11__* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %155

127:                                              ; preds = %104
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @device_init_wakeup(%struct.TYPE_11__* %129, i32 1)
  %131 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %132 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  store i32* @sprd_rtc_ops, i32** %134, align 8
  %135 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %136 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %135, i32 0, i32 1
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %140 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i64 5662310399, i64* %142, align 8
  %143 = load %struct.sprd_rtc*, %struct.sprd_rtc** %5, align 8
  %144 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = call i32 @rtc_register_device(%struct.TYPE_10__* %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %127
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @device_init_wakeup(%struct.TYPE_11__* %151, i32 0)
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %155

154:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %154, %149, %122, %99, %89, %72, %56, %42, %32, %17
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.sprd_rtc* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.TYPE_10__* @devm_rtc_allocate_device(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sprd_rtc*) #1

declare dso_local i32 @sprd_rtc_check_alarm_int(%struct.sprd_rtc*) #1

declare dso_local i32 @sprd_rtc_check_power_down(%struct.sprd_rtc*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_11__*, i32, i32*, i32, i32, i32, %struct.sprd_rtc*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
