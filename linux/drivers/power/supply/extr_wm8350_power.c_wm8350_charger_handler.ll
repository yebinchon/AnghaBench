; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_charger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_charger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32, i32, %struct.wm8350_power }
%struct.wm8350_power = type { i32, i32, i32, %struct.wm8350_charger_policy* }
%struct.wm8350_charger_policy = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"battery failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"charger timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"fast charger ready\0A\00", align 1
@WM8350_BATTERY_CHARGER_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_CHG_FAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"battery < 3.9V\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"battery < 3.1V\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"battery < 2.85V\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Unknown interrupt %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm8350_charger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_charger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca %struct.wm8350_power*, align 8
  %7 = alloca %struct.wm8350_charger_policy*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wm8350*
  store %struct.wm8350* %9, %struct.wm8350** %5, align 8
  %10 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %11 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %10, i32 0, i32 2
  store %struct.wm8350_power* %11, %struct.wm8350_power** %6, align 8
  %12 = load %struct.wm8350_power*, %struct.wm8350_power** %6, align 8
  %13 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %12, i32 0, i32 3
  %14 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %13, align 8
  store %struct.wm8350_charger_policy* %14, %struct.wm8350_charger_policy** %7, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %17 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %15, %18
  switch i32 %19, label %87 [
    i32 139, label %20
    i32 134, label %25
    i32 138, label %34
    i32 140, label %34
    i32 135, label %34
    i32 137, label %34
    i32 136, label %39
    i32 131, label %55
    i32 132, label %60
    i32 133, label %65
    i32 129, label %70
    i32 128, label %70
    i32 130, label %74
  ]

20:                                               ; preds = %2
  %21 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %22 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %27 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.wm8350_power*, %struct.wm8350_power** %6, align 8
  %31 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @power_supply_changed(i32 %32)
  br label %93

34:                                               ; preds = %2, %2, %2, %2
  %35 = load %struct.wm8350_power*, %struct.wm8350_power** %6, align 8
  %36 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @power_supply_changed(i32 %37)
  br label %93

39:                                               ; preds = %2
  %40 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %41 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %45 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %7, align 8
  %46 = call i32 @wm8350_charger_config(%struct.wm8350* %44, %struct.wm8350_charger_policy* %45)
  %47 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %48 = call i32 @wm8350_reg_unlock(%struct.wm8350* %47)
  %49 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %50 = load i32, i32* @WM8350_BATTERY_CHARGER_CONTROL_1, align 4
  %51 = load i32, i32* @WM8350_CHG_FAST, align 4
  %52 = call i32 @wm8350_set_bits(%struct.wm8350* %49, i32 %50, i32 %51)
  %53 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %54 = call i32 @wm8350_reg_lock(%struct.wm8350* %53)
  br label %93

55:                                               ; preds = %2
  %56 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %57 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %93

60:                                               ; preds = %2
  %61 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %62 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_warn(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %93

65:                                               ; preds = %2
  %66 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %67 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_warn(i32 %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %93

70:                                               ; preds = %2, %2
  %71 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %72 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %7, align 8
  %73 = call i32 @wm8350_charger_config(%struct.wm8350* %71, %struct.wm8350_charger_policy* %72)
  br label %74

74:                                               ; preds = %2, %70
  %75 = load %struct.wm8350_power*, %struct.wm8350_power** %6, align 8
  %76 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @power_supply_changed(i32 %77)
  %79 = load %struct.wm8350_power*, %struct.wm8350_power** %6, align 8
  %80 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @power_supply_changed(i32 %81)
  %83 = load %struct.wm8350_power*, %struct.wm8350_power** %6, align 8
  %84 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @power_supply_changed(i32 %85)
  br label %93

87:                                               ; preds = %2
  %88 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %89 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %74, %65, %60, %55, %39, %34, %25, %20
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %94
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @power_supply_changed(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @wm8350_charger_config(%struct.wm8350*, %struct.wm8350_charger_policy*) #1

declare dso_local i32 @wm8350_reg_unlock(%struct.wm8350*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_reg_lock(%struct.wm8350*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
