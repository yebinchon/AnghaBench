; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.da9150_charger = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"CHG_VBUS\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"CHG_VFAULT\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CHG_TJUNC\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CHG_STATUS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9150_charger_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.da9150_charger*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.da9150_charger* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.da9150_charger* %6, %struct.da9150_charger** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call i32 @platform_get_irq_byname(%struct.platform_device* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.da9150_charger* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = call i32 @platform_get_irq_byname(%struct.platform_device* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.da9150_charger* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = call i32 @platform_get_irq_byname(%struct.platform_device* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.da9150_charger* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = call i32 @platform_get_irq_byname(%struct.platform_device* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.da9150_charger* %25)
  %27 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %28 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IS_ERR_OR_NULL(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %1
  %33 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %34 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %37 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %36, i32 0, i32 6
  %38 = call i32 @usb_unregister_notifier(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %41 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @power_supply_unregister(i32 %42)
  %44 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %45 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @power_supply_unregister(i32 %46)
  %48 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %49 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @iio_channel_release(i32 %50)
  %52 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %53 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @iio_channel_release(i32 %54)
  %56 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %57 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @iio_channel_release(i32 %58)
  %60 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %61 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @iio_channel_release(i32 %62)
  ret i32 0
}

declare dso_local %struct.da9150_charger* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.da9150_charger*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @usb_unregister_notifier(i32, i32*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @iio_channel_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
