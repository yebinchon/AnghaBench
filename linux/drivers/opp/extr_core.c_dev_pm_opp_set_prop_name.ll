; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_set_prop_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_set_prop_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i64, i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.opp_table* @dev_pm_opp_set_prop_name(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.opp_table*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.opp_table*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.opp_table* @dev_pm_opp_get_opp_table(%struct.device* %7)
  store %struct.opp_table* %8, %struct.opp_table** %6, align 8
  %9 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %10 = icmp ne %struct.opp_table* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.opp_table* @ERR_PTR(i32 %13)
  store %struct.opp_table* %14, %struct.opp_table** %3, align 8
  br label %47

15:                                               ; preds = %2
  %16 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %17 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %16, i32 0, i32 1
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %24 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  store %struct.opp_table* %28, %struct.opp_table** %3, align 8
  br label %47

29:                                               ; preds = %15
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @kstrdup(i8* %30, i32 %31)
  %33 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %34 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %36 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %41 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.opp_table* @ERR_PTR(i32 %43)
  store %struct.opp_table* %44, %struct.opp_table** %3, align 8
  br label %47

45:                                               ; preds = %29
  %46 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  store %struct.opp_table* %46, %struct.opp_table** %3, align 8
  br label %47

47:                                               ; preds = %45, %39, %27, %11
  %48 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  ret %struct.opp_table* %48
}

declare dso_local %struct.opp_table* @dev_pm_opp_get_opp_table(%struct.device*) #1

declare dso_local %struct.opp_table* @ERR_PTR(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @kstrdup(i8*, i32) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
