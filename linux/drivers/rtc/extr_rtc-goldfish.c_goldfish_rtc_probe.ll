; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-goldfish.c_goldfish_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-goldfish.c_goldfish_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.goldfish_rtc = type { i64, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@goldfish_rtc_ops = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@goldfish_rtc_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @goldfish_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.goldfish_rtc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.goldfish_rtc* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.goldfish_rtc* %10, %struct.goldfish_rtc** %4, align 8
  %11 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %12 = icmp ne %struct.goldfish_rtc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %103

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.goldfish_rtc* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %103

28:                                               ; preds = %16
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = call %struct.TYPE_6__* @devm_ioremap_resource(i32* %30, %struct.resource* %31)
  %33 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %34 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %33, i32 0, i32 2
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %36 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i64 @IS_ERR(%struct.TYPE_6__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %103

43:                                               ; preds = %28
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i64 @platform_get_irq(%struct.platform_device* %44, i32 0)
  %46 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %47 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %49 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %103

55:                                               ; preds = %43
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 1
  %58 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %57)
  %59 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %60 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %59, i32 0, i32 1
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %60, align 8
  %61 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %62 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i64 @IS_ERR(%struct.TYPE_6__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %68 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.TYPE_6__* %69)
  store i32 %70, i32* %2, align 4
  br label %103

71:                                               ; preds = %55
  %72 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %73 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32* @goldfish_rtc_ops, i32** %75, align 8
  %76 = load i32, i32* @U64_MAX, align 4
  %77 = load i32, i32* @NSEC_PER_SEC, align 4
  %78 = sdiv i32 %76, %77
  %79 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %80 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 1
  %85 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %86 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @goldfish_rtc_interrupt, align 4
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %93 = call i32 @devm_request_irq(i32* %84, i64 %87, i32 %88, i32 0, i32 %91, %struct.goldfish_rtc* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %71
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %103

98:                                               ; preds = %71
  %99 = load %struct.goldfish_rtc*, %struct.goldfish_rtc** %4, align 8
  %100 = getelementptr inbounds %struct.goldfish_rtc, %struct.goldfish_rtc* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = call i32 @rtc_register_device(%struct.TYPE_6__* %101)
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %98, %96, %66, %52, %40, %25, %13
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.goldfish_rtc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.goldfish_rtc*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.goldfish_rtc*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
