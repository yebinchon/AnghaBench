; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_goldfish_battery.c_goldfish_battery_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_goldfish_battery.c_goldfish_battery_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_battery_data = type { i32, i32, i32 }

@BATTERY_INT_STATUS = common dso_local global i32 0, align 4
@BATTERY_INT_MASK = common dso_local global i32 0, align 4
@BATTERY_STATUS_CHANGED = common dso_local global i32 0, align 4
@AC_STATUS_CHANGED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @goldfish_battery_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_battery_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.goldfish_battery_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.goldfish_battery_data*
  store %struct.goldfish_battery_data* %9, %struct.goldfish_battery_data** %6, align 8
  %10 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %11 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %15 = load i32, i32* @BATTERY_INT_STATUS, align 4
  %16 = call i32 @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @BATTERY_INT_MASK, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @BATTERY_STATUS_CHANGED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %26 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @power_supply_changed(i32 %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AC_STATUS_CHANGED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %36 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @power_supply_changed(i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %41 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @IRQ_NONE, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  ret i32 %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data*, i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
