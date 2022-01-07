; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vt8500_rtc = type { i32, i64, i64, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@VT8500_RTC_CR_ENABLE = common dso_local global i32 0, align 4
@VT8500_RTC_CR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"vt8500-rtc\00", align 1
@vt8500_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to register RTC device -> %d\0A\00", align 1
@vt8500_rtc_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"rtc alarm\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"can't get irq %i, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vt8500_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vt8500_rtc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vt8500_rtc* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.vt8500_rtc* %10, %struct.vt8500_rtc** %4, align 8
  %11 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %12 = icmp ne %struct.vt8500_rtc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %105

16:                                               ; preds = %1
  %17 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %18 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %17, i32 0, i32 3
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.vt8500_rtc* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @platform_get_irq(%struct.platform_device* %23, i32 0)
  %25 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %26 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %28 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %33 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %2, align 4
  br label %105

35:                                               ; preds = %16
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %5, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = call i64 @devm_ioremap_resource(i32* %40, %struct.resource* %41)
  %43 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %44 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %46 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @IS_ERR(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %52 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @PTR_ERR(i64 %53)
  store i32 %54, i32* %2, align 4
  br label %105

55:                                               ; preds = %35
  %56 = load i32, i32* @VT8500_RTC_CR_ENABLE, align 4
  %57 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %58 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VT8500_RTC_CR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* @THIS_MODULE, align 4
  %66 = call i64 @devm_rtc_device_register(i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* @vt8500_rtc_ops, i32 %65)
  %67 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %68 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %70 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @IS_ERR(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %55
  %75 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %76 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @PTR_ERR(i64 %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %103

83:                                               ; preds = %55
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %87 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @vt8500_rtc_irq, align 4
  %90 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %91 = call i32 @devm_request_irq(i32* %85, i32 %88, i32 %89, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.vt8500_rtc* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %83
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %4, align 8
  %98 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100)
  br label %103

102:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %105

103:                                              ; preds = %94, %74
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %102, %50, %31, %13
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.vt8500_rtc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vt8500_rtc*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.vt8500_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
