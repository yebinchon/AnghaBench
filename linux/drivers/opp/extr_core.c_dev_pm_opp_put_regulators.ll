; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_put_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_put_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_pm_opp_put_regulators(%struct.opp_table* %0) #0 {
  %2 = alloca %struct.opp_table*, align 8
  %3 = alloca i32, align 4
  store %struct.opp_table* %0, %struct.opp_table** %2, align 8
  %4 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %5 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %1
  %10 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %11 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %10, i32 0, i32 2
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %18 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %33, %9
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %26 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_put(i32 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %3, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %38 = call i32 @_free_set_opp_data(%struct.opp_table* %37)
  %39 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %40 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %44 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %46 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  br label %47

47:                                               ; preds = %36, %8
  %48 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %49 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %48)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @_free_set_opp_data(%struct.opp_table*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
