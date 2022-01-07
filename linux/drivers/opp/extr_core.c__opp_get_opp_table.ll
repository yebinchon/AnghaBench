; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__opp_get_opp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__opp_get_opp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32 }
%struct.device = type { i32 }

@opp_table_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.opp_table* (%struct.device*, i32)* @_opp_get_opp_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.opp_table* @_opp_get_opp_table(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.opp_table*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @opp_table_lock)
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.opp_table* @_find_opp_table_unlocked(%struct.device* %7)
  store %struct.opp_table* %8, %struct.opp_table** %5, align 8
  %9 = load %struct.opp_table*, %struct.opp_table** %5, align 8
  %10 = call i32 @IS_ERR(%struct.opp_table* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.opp_table* @_managed_opp(%struct.device* %14, i32 %15)
  store %struct.opp_table* %16, %struct.opp_table** %5, align 8
  %17 = load %struct.opp_table*, %struct.opp_table** %5, align 8
  %18 = icmp ne %struct.opp_table* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.opp_table*, %struct.opp_table** %5, align 8
  %22 = call i32 @_add_opp_dev_unlocked(%struct.device* %20, %struct.opp_table* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.opp_table*, %struct.opp_table** %5, align 8
  %26 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %25)
  store %struct.opp_table* null, %struct.opp_table** %5, align 8
  br label %27

27:                                               ; preds = %24, %19
  br label %32

28:                                               ; preds = %13
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.opp_table* @_allocate_opp_table(%struct.device* %29, i32 %30)
  store %struct.opp_table* %31, %struct.opp_table** %5, align 8
  br label %32

32:                                               ; preds = %28, %27, %12
  %33 = call i32 @mutex_unlock(i32* @opp_table_lock)
  %34 = load %struct.opp_table*, %struct.opp_table** %5, align 8
  ret %struct.opp_table* %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.opp_table* @_find_opp_table_unlocked(%struct.device*) #1

declare dso_local i32 @IS_ERR(%struct.opp_table*) #1

declare dso_local %struct.opp_table* @_managed_opp(%struct.device*, i32) #1

declare dso_local i32 @_add_opp_dev_unlocked(%struct.device*, %struct.opp_table*) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

declare dso_local %struct.opp_table* @_allocate_opp_table(%struct.device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
