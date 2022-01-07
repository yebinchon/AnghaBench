; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_register_set_opp_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_register_set_opp_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32 (%struct.dev_pm_set_opp_data*)*, i32 }
%struct.dev_pm_set_opp_data = type opaque
%struct.device = type { i32 }
%struct.dev_pm_set_opp_data.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.opp_table* @dev_pm_opp_register_set_opp_helper(%struct.device* %0, i32 (%struct.dev_pm_set_opp_data.0*)* %1) #0 {
  %3 = alloca %struct.opp_table*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32 (%struct.dev_pm_set_opp_data.0*)*, align 8
  %6 = alloca %struct.opp_table*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 (%struct.dev_pm_set_opp_data.0*)* %1, i32 (%struct.dev_pm_set_opp_data.0*)** %5, align 8
  %7 = load i32 (%struct.dev_pm_set_opp_data.0*)*, i32 (%struct.dev_pm_set_opp_data.0*)** %5, align 8
  %8 = icmp ne i32 (%struct.dev_pm_set_opp_data.0*)* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.opp_table* @ERR_PTR(i32 %11)
  store %struct.opp_table* %12, %struct.opp_table** %3, align 8
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.opp_table* @dev_pm_opp_get_opp_table(%struct.device* %14)
  store %struct.opp_table* %15, %struct.opp_table** %6, align 8
  %16 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %17 = icmp ne %struct.opp_table* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.opp_table* @ERR_PTR(i32 %20)
  store %struct.opp_table* %21, %struct.opp_table** %3, align 8
  br label %49

22:                                               ; preds = %13
  %23 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %24 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %23, i32 0, i32 1
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %33 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %32)
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.opp_table* @ERR_PTR(i32 %35)
  store %struct.opp_table* %36, %struct.opp_table** %3, align 8
  br label %49

37:                                               ; preds = %22
  %38 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %39 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %38, i32 0, i32 0
  %40 = load i32 (%struct.dev_pm_set_opp_data*)*, i32 (%struct.dev_pm_set_opp_data*)** %39, align 8
  %41 = icmp ne i32 (%struct.dev_pm_set_opp_data*)* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32 (%struct.dev_pm_set_opp_data.0*)*, i32 (%struct.dev_pm_set_opp_data.0*)** %5, align 8
  %44 = bitcast i32 (%struct.dev_pm_set_opp_data.0*)* %43 to i32 (%struct.dev_pm_set_opp_data*)*
  %45 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %46 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %45, i32 0, i32 0
  store i32 (%struct.dev_pm_set_opp_data*)* %44, i32 (%struct.dev_pm_set_opp_data*)** %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  store %struct.opp_table* %48, %struct.opp_table** %3, align 8
  br label %49

49:                                               ; preds = %47, %31, %18, %9
  %50 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  ret %struct.opp_table* %50
}

declare dso_local %struct.opp_table* @ERR_PTR(i32) #1

declare dso_local %struct.opp_table* @dev_pm_opp_get_opp_table(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
