; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_alarm_irq_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_alarm_irq_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lp8788_rtc = type { i64, i32, %struct.lp8788* }
%struct.lp8788 = type { %struct.irq_domain* }
%struct.irq_domain = type { i32 }
%struct.resource = type { i32, i32 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@LP8788_ALM_IRQ = common dso_local global i32 0, align 4
@LP8788_ALARM_1 = common dso_local global i64 0, align 8
@lp8788_alarm_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.lp8788_rtc*)* @lp8788_alarm_irq_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_alarm_irq_register(%struct.platform_device* %0, %struct.lp8788_rtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.lp8788_rtc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.lp8788*, align 8
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.lp8788_rtc* %1, %struct.lp8788_rtc** %5, align 8
  %10 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %10, i32 0, i32 2
  %12 = load %struct.lp8788*, %struct.lp8788** %11, align 8
  store %struct.lp8788* %12, %struct.lp8788** %7, align 8
  %13 = load %struct.lp8788*, %struct.lp8788** %7, align 8
  %14 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %13, i32 0, i32 0
  %15 = load %struct.irq_domain*, %struct.irq_domain** %14, align 8
  store %struct.irq_domain* %15, %struct.irq_domain** %8, align 8
  %16 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = load i32, i32* @IORESOURCE_IRQ, align 4
  %20 = load i32, i32* @LP8788_ALM_IRQ, align 4
  %21 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %18, i32 %19, i32 %20)
  store %struct.resource* %21, %struct.resource** %6, align 8
  %22 = load %struct.resource*, %struct.resource** %6, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LP8788_ALARM_1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @irq_create_mapping(%struct.irq_domain* %40, i32 %41)
  %43 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %44 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %48 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @lp8788_alarm_irq_handler, align 4
  %51 = load i32, i32* @LP8788_ALM_IRQ, align 4
  %52 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %53 = call i32 @devm_request_threaded_irq(i32* %46, i32 %49, i32* null, i32 %50, i32 0, i32 %51, %struct.lp8788_rtc* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %39, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @irq_create_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.lp8788_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
