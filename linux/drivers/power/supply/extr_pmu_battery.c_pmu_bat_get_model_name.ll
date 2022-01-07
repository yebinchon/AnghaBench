; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pmu_battery.c_pmu_bat_get_model_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pmu_battery.c_pmu_bat_get_model_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_battery_info = type { i32 }

@PMU_BATT_TYPE_MASK = common dso_local global i32 0, align 4
@pmu_batt_types = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pmu_battery_info*)* @pmu_bat_get_model_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pmu_bat_get_model_name(%struct.pmu_battery_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pmu_battery_info*, align 8
  store %struct.pmu_battery_info* %0, %struct.pmu_battery_info** %3, align 8
  %4 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %3, align 8
  %5 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PMU_BATT_TYPE_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 130, label %13
    i32 129, label %17
  ]

9:                                                ; preds = %1
  %10 = load i8**, i8*** @pmu_batt_types, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load i8**, i8*** @pmu_batt_types, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  br label %26

17:                                               ; preds = %1
  %18 = load i8**, i8*** @pmu_batt_types, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  br label %26

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21
  %23 = load i8**, i8*** @pmu_batt_types, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 3
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %22, %17, %13, %9
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
