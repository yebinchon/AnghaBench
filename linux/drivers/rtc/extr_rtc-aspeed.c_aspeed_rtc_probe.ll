; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-aspeed.c_aspeed_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-aspeed.c_aspeed_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.aspeed_rtc = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@aspeed_rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_1900 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.aspeed_rtc*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.aspeed_rtc* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.aspeed_rtc* %9, %struct.aspeed_rtc** %4, align 8
  %10 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %11 = icmp ne %struct.aspeed_rtc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %72

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = call %struct.TYPE_6__* @devm_ioremap_resource(i32* %20, %struct.resource* %21)
  %23 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %24 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %23, i32 0, i32 1
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %26 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i64 @IS_ERR(%struct.TYPE_6__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %32 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @PTR_ERR(%struct.TYPE_6__* %33)
  store i32 %34, i32* %2, align 4
  br label %72

35:                                               ; preds = %15
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %37)
  %39 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %40 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %39, i32 0, i32 0
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %40, align 8
  %41 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %42 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i64 @IS_ERR(%struct.TYPE_6__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %48 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.TYPE_6__* %49)
  store i32 %50, i32* %2, align 4
  br label %72

51:                                               ; preds = %35
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.aspeed_rtc* %53)
  %55 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %56 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i32* @aspeed_rtc_ops, i32** %58, align 8
  %59 = load i32, i32* @RTC_TIMESTAMP_BEGIN_1900, align 4
  %60 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %61 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 8
  %64 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %65 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i64 38814989399, i64* %67, align 8
  %68 = load %struct.aspeed_rtc*, %struct.aspeed_rtc** %4, align 8
  %69 = getelementptr inbounds %struct.aspeed_rtc, %struct.aspeed_rtc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @rtc_register_device(%struct.TYPE_6__* %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %51, %46, %30, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.aspeed_rtc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.aspeed_rtc*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
