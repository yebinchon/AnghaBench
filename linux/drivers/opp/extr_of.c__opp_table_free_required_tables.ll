; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__opp_table_free_required_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__opp_table_free_required_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32, %struct.opp_table** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opp_table*)* @_opp_table_free_required_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_opp_table_free_required_tables(%struct.opp_table* %0) #0 {
  %2 = alloca %struct.opp_table*, align 8
  %3 = alloca %struct.opp_table**, align 8
  %4 = alloca i32, align 4
  store %struct.opp_table* %0, %struct.opp_table** %2, align 8
  %5 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %6 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %5, i32 0, i32 1
  %7 = load %struct.opp_table**, %struct.opp_table*** %6, align 8
  store %struct.opp_table** %7, %struct.opp_table*** %3, align 8
  %8 = load %struct.opp_table**, %struct.opp_table*** %3, align 8
  %9 = icmp ne %struct.opp_table** %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %34, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %15 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.opp_table**, %struct.opp_table*** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.opp_table*, %struct.opp_table** %19, i64 %21
  %23 = load %struct.opp_table*, %struct.opp_table** %22, align 8
  %24 = call i64 @IS_ERR_OR_NULL(%struct.opp_table* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %37

27:                                               ; preds = %18
  %28 = load %struct.opp_table**, %struct.opp_table*** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.opp_table*, %struct.opp_table** %28, i64 %30
  %32 = load %struct.opp_table*, %struct.opp_table** %31, align 8
  %33 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %12

37:                                               ; preds = %26, %12
  %38 = load %struct.opp_table**, %struct.opp_table*** %3, align 8
  %39 = call i32 @kfree(%struct.opp_table** %38)
  %40 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %41 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %43 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %42, i32 0, i32 1
  store %struct.opp_table** null, %struct.opp_table*** %43, align 8
  br label %44

44:                                               ; preds = %37, %10
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.opp_table*) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

declare dso_local i32 @kfree(%struct.opp_table**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
