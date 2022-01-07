; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_max8925_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_max8925_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.max8925_chip = type { i32, i32 }
%struct.max8925_rtc_info = type { i32, i32, %struct.TYPE_7__*, i32, %struct.max8925_chip* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rtc_update_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"rtc-alarm0\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"max8925-rtc\00", align 1
@max8925_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8925_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8925_chip*, align 8
  %5 = alloca %struct.max8925_rtc_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.max8925_chip* @dev_get_drvdata(i32 %10)
  store %struct.max8925_chip* %11, %struct.max8925_chip** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max8925_rtc_info* @devm_kzalloc(%struct.TYPE_7__* %13, i32 32, i32 %14)
  store %struct.max8925_rtc_info* %15, %struct.max8925_rtc_info** %5, align 8
  %16 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %17 = icmp ne %struct.max8925_rtc_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %23 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %24 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %23, i32 0, i32 4
  store %struct.max8925_chip* %22, %struct.max8925_chip** %24, align 8
  %25 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %26 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %29 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %33 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %32, i32 0, i32 2
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @platform_get_irq(%struct.platform_device* %34, i32 0)
  %36 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %37 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %41 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @rtc_update_handler, align 4
  %44 = load i32, i32* @IRQF_ONESHOT, align 4
  %45 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %46 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %39, i32 %42, i32* null, i32 %43, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.max8925_rtc_info* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %21
  %50 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %51 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_7__*
  %55 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %56 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %94

61:                                               ; preds = %21
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %65 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %63, %struct.max8925_rtc_info* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %68 = call i32 @platform_set_drvdata(%struct.platform_device* %66, %struct.max8925_rtc_info* %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @device_init_wakeup(%struct.TYPE_7__* %70, i32 1)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* @THIS_MODULE, align 4
  %75 = call i32 @devm_rtc_device_register(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* @max8925_rtc_ops, i32 %74)
  %76 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %77 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %79 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %83 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %61
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %87, %49, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.max8925_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8925_rtc_info* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i32, i32*, i32, i32, i8*, %struct.max8925_rtc_info*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.max8925_rtc_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8925_rtc_info*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_7__*, i8*, i32*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
