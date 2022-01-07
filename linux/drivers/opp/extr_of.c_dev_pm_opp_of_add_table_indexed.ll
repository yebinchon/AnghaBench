; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_of.c_dev_pm_opp_of_add_table_indexed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_of.c_dev_pm_opp_of_add_table_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.opp_table = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_opp_of_add_table_indexed(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.opp_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @of_count_phandle_with_args(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %11
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.opp_table* @dev_pm_opp_get_opp_table_indexed(%struct.device* %21, i32 %22)
  store %struct.opp_table* %23, %struct.opp_table** %6, align 8
  %24 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %25 = icmp ne %struct.opp_table* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %32 = call i32 @_of_add_opp_table_v2(%struct.device* %30, %struct.opp_table* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %37 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %36)
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @of_count_phandle_with_args(i32, i8*, i32*) #1

declare dso_local %struct.opp_table* @dev_pm_opp_get_opp_table_indexed(%struct.device*, i32) #1

declare dso_local i32 @_of_add_opp_table_v2(%struct.device*, %struct.opp_table*) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
