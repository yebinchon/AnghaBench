; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_power.c_wm831x_power_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_power.c_wm831x_power_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wm831x_power = type { i32, i32, i32, i64, i32, i64, %struct.wm831x* }
%struct.wm831x = type { i32 }

@wm831x_bat_irqs = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"PWR SRC\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"SYSLO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_power_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_power_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.wm831x_power*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.wm831x_power* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.wm831x_power* %8, %struct.wm831x_power** %3, align 8
  %9 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %10 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %9, i32 0, i32 6
  %11 = load %struct.wm831x*, %struct.wm831x** %10, align 8
  store %struct.wm831x* %11, %struct.wm831x** %4, align 8
  %12 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %13 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %18 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %21 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %20, i32 0, i32 4
  %22 = call i32 @usb_unregister_notifier(i64 %19, i32* %21)
  br label %23

23:                                               ; preds = %16, %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %42, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i8**, i8*** @wm831x_bat_irqs, align 8
  %27 = call i32 @ARRAY_SIZE(i8** %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = load i8**, i8*** @wm831x_bat_irqs, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @platform_get_irq_byname(%struct.platform_device* %31, i8* %36)
  %38 = call i32 @wm831x_irq(%struct.wm831x* %30, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %41 = call i32 @free_irq(i32 %39, %struct.wm831x_power* %40)
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = call i32 @platform_get_irq_byname(%struct.platform_device* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @wm831x_irq(%struct.wm831x* %46, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %52 = call i32 @free_irq(i32 %50, %struct.wm831x_power* %51)
  %53 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %55 = call i32 @platform_get_irq_byname(%struct.platform_device* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @wm831x_irq(%struct.wm831x* %53, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %59 = call i32 @free_irq(i32 %57, %struct.wm831x_power* %58)
  %60 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %61 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %45
  %65 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %66 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @power_supply_unregister(i32 %67)
  br label %69

69:                                               ; preds = %64, %45
  %70 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %71 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @power_supply_unregister(i32 %72)
  %74 = load %struct.wm831x_power*, %struct.wm831x_power** %3, align 8
  %75 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @power_supply_unregister(i32 %76)
  ret i32 0
}

declare dso_local %struct.wm831x_power* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_unregister_notifier(i64, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @wm831x_irq(%struct.wm831x*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.wm831x_power*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
