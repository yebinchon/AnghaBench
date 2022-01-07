; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_talert_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_talert_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { i64 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"get_irq failed\0A\00", align 1
@ti_bandgap_talert_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"talert\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Request threaded irq failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_bandgap*, %struct.platform_device*)* @ti_bandgap_talert_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_bandgap_talert_init(%struct.ti_bandgap* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_bandgap*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %8 = call i64 @platform_get_irq(%struct.platform_device* %7, i32 0)
  %9 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %10 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %12 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %20 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %25 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @ti_bandgap_talert_irq_handler, align 4
  %29 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %30 = load i32, i32* @IRQF_ONESHOT, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %33 = call i32 @request_threaded_irq(i32 %27, i32* null, i32 %28, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.ti_bandgap* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %36, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.ti_bandgap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
