; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_check_thermal_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_check_thermal_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { i64, i32, %struct.charger_desc* }
%struct.charger_desc = type { i32, i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to get battery temperature\0A\00", align 1
@CM_EVENT_BATT_OVERHEAT = common dso_local global i32 0, align 4
@CM_EVENT_BATT_COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @cm_check_thermal_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_check_thermal_status(%struct.charger_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca %struct.charger_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  %9 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %10 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %9, i32 0, i32 2
  %11 = load %struct.charger_desc*, %struct.charger_desc** %10, align 8
  store %struct.charger_desc* %11, %struct.charger_desc** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %13 = call i32 @cm_get_battery_temperature(%struct.charger_manager* %12, i32* %5)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %18 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  %22 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %23 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %26 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %29 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %21
  %33 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %34 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %41 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %32, %21
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @CM_EVENT_BATT_OVERHEAT, align 4
  store i32 %52, i32* %8, align 4
  br label %60

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @CM_EVENT_BATT_COLD, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @cm_get_battery_temperature(%struct.charger_manager*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
