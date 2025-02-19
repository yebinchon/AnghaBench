; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_get_max_clock_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_get_max_clock_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.opp_table = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dev_pm_opp_get_max_clock_latency(%struct.device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.opp_table*, align 8
  %5 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.opp_table* @_find_opp_table(%struct.device* %6)
  store %struct.opp_table* %7, %struct.opp_table** %4, align 8
  %8 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %9 = call i64 @IS_ERR(%struct.opp_table* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %14 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %17 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %16)
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i64, i64* %2, align 8
  ret i64 %20
}

declare dso_local %struct.opp_table* @_find_opp_table(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.opp_table*) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
