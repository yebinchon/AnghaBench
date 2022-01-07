; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.notifier_block = type { i32 }
%struct.opp_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_opp_unregister_notifier(%struct.device* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca %struct.opp_table*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.opp_table* @_find_opp_table(%struct.device* %8)
  store %struct.opp_table* %9, %struct.opp_table** %6, align 8
  %10 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %11 = call i64 @IS_ERR(%struct.opp_table* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.opp_table* %14)
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %18 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %17, i32 0, i32 0
  %19 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %20 = call i32 @blocking_notifier_chain_unregister(i32* %18, %struct.notifier_block* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %22 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.opp_table* @_find_opp_table(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.opp_table*) #1

declare dso_local i32 @PTR_ERR(%struct.opp_table*) #1

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
