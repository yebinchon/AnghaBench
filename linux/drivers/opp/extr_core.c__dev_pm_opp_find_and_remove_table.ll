; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__dev_pm_opp_find_and_remove_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__dev_pm_opp_find_and_remove_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.opp_table = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: opp_table: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_dev_pm_opp_find_and_remove_table(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.opp_table*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.opp_table* @_find_opp_table(%struct.device* %5)
  store %struct.opp_table* %6, %struct.opp_table** %3, align 8
  %7 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  %8 = call i64 @IS_ERR(%struct.opp_table* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  %12 = call i32 @PTR_ERR(%struct.opp_table* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = call i64 @IS_ERR_OR_NULL(%struct.device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %25

22:                                               ; preds = %17
  %23 = load %struct.device*, %struct.device** %2, align 8
  %24 = call i8* @dev_name(%struct.device* %23)
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %21 ], [ %24, %22 ]
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %10
  br label %37

30:                                               ; preds = %1
  %31 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  %32 = call i32 @_put_opp_list_kref(%struct.opp_table* %31)
  %33 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  %34 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %33)
  %35 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  %36 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %35)
  br label %37

37:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.opp_table* @_find_opp_table(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.opp_table*) #1

declare dso_local i32 @PTR_ERR(%struct.opp_table*) #1

declare dso_local i32 @WARN(i32, i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.device*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @_put_opp_list_kref(%struct.opp_table*) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
