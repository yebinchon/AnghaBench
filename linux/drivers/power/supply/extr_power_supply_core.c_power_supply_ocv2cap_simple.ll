; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_ocv2cap_simple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_ocv2cap_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply_battery_ocv_table = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_ocv2cap_simple(%struct.power_supply_battery_ocv_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.power_supply_battery_ocv_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.power_supply_battery_ocv_table* %0, %struct.power_supply_battery_ocv_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %16, i64 %18
  %20 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %28

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %10

28:                                               ; preds = %23, %10
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %31
  %36 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %36, i64 %39
  %41 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %43, i64 %45
  %47 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %42, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %51, i64 %53
  %55 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %50, %56
  %58 = mul nsw i32 %49, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %59, i64 %62
  %64 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %66, i64 %68
  %70 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %65, %71
  %73 = load i32, i32* %9, align 4
  %74 = sdiv i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %76, i64 %78
  %80 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %75, %81
  store i32 %82, i32* %8, align 4
  br label %100

83:                                               ; preds = %31, %28
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  %88 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %87, i64 0
  %89 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %8, align 4
  br label %99

91:                                               ; preds = %83
  %92 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %92, i64 %95
  %97 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %91, %86
  br label %100

100:                                              ; preds = %99, %35
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
