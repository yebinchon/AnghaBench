; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__of_opp_free_required_opps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__of_opp_free_required_opps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32 }
%struct.dev_pm_opp = type { %struct.dev_pm_opp** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_of_opp_free_required_opps(%struct.opp_table* %0, %struct.dev_pm_opp* %1) #0 {
  %3 = alloca %struct.opp_table*, align 8
  %4 = alloca %struct.dev_pm_opp*, align 8
  %5 = alloca %struct.dev_pm_opp**, align 8
  %6 = alloca i32, align 4
  store %struct.opp_table* %0, %struct.opp_table** %3, align 8
  store %struct.dev_pm_opp* %1, %struct.dev_pm_opp** %4, align 8
  %7 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %4, align 8
  %8 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %7, i32 0, i32 0
  %9 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %8, align 8
  store %struct.dev_pm_opp** %9, %struct.dev_pm_opp*** %5, align 8
  %10 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %5, align 8
  %11 = icmp ne %struct.dev_pm_opp** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %43

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %35, %13
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  %17 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dev_pm_opp*, %struct.dev_pm_opp** %21, i64 %23
  %25 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %24, align 8
  %26 = icmp ne %struct.dev_pm_opp* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %38

28:                                               ; preds = %20
  %29 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dev_pm_opp*, %struct.dev_pm_opp** %29, i64 %31
  %33 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %32, align 8
  %34 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %33)
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %14

38:                                               ; preds = %27, %14
  %39 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %5, align 8
  %40 = call i32 @kfree(%struct.dev_pm_opp** %39)
  %41 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %4, align 8
  %42 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %41, i32 0, i32 0
  store %struct.dev_pm_opp** null, %struct.dev_pm_opp*** %42, align 8
  br label %43

43:                                               ; preds = %38, %12
  ret void
}

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @kfree(%struct.dev_pm_opp**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
