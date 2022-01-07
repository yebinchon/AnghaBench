; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_find_ocv2cap_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_find_ocv2cap_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply_battery_ocv_table = type { i32 }
%struct.power_supply_battery_info = type { i32*, %struct.power_supply_battery_ocv_table**, i64* }

@INT_MAX = common dso_local global i32 0, align 4
@POWER_SUPPLY_OCV_TEMP_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.power_supply_battery_ocv_table* @power_supply_find_ocv2cap_table(%struct.power_supply_battery_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.power_supply_battery_ocv_table*, align 8
  %5 = alloca %struct.power_supply_battery_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.power_supply_battery_info* %0, %struct.power_supply_battery_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @INT_MAX, align 4
  store i32 %12, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %13 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %5, align 8
  %14 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %13, i32 0, i32 1
  %15 = load %struct.power_supply_battery_ocv_table**, %struct.power_supply_battery_ocv_table*** %14, align 8
  %16 = getelementptr inbounds %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %15, i64 0
  %17 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %16, align 8
  %18 = icmp ne %struct.power_supply_battery_ocv_table* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %4, align 8
  br label %60

20:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @POWER_SUPPLY_OCV_TEMP_MAX, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %5, align 8
  %27 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = call i32 @abs(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %10, align 8
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %39, %25
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %21

46:                                               ; preds = %21
  %47 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %5, align 8
  %48 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %5, align 8
  %55 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %54, i32 0, i32 1
  %56 = load %struct.power_supply_battery_ocv_table**, %struct.power_supply_battery_ocv_table*** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %56, i64 %57
  %59 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %58, align 8
  store %struct.power_supply_battery_ocv_table* %59, %struct.power_supply_battery_ocv_table** %4, align 8
  br label %60

60:                                               ; preds = %46, %19
  %61 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  ret %struct.power_supply_battery_ocv_table* %61
}

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
