; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_set_supported_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_set_supported_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32, i64, i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.opp_table* @dev_pm_opp_set_supported_hw(%struct.device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.opp_table*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.opp_table*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.opp_table* @dev_pm_opp_get_opp_table(%struct.device* %9)
  store %struct.opp_table* %10, %struct.opp_table** %8, align 8
  %11 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %12 = icmp ne %struct.opp_table* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.opp_table* @ERR_PTR(i32 %15)
  store %struct.opp_table* %16, %struct.opp_table** %4, align 8
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %19 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %18, i32 0, i32 2
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %26 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  store %struct.opp_table* %30, %struct.opp_table** %4, align 8
  br label %56

31:                                               ; preds = %17
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64 @kmemdup(i32* %32, i32 %36, i32 %37)
  %39 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %40 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %42 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %31
  %46 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %47 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.opp_table* @ERR_PTR(i32 %49)
  store %struct.opp_table* %50, %struct.opp_table** %4, align 8
  br label %56

51:                                               ; preds = %31
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %54 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  store %struct.opp_table* %55, %struct.opp_table** %4, align 8
  br label %56

56:                                               ; preds = %51, %45, %29, %13
  %57 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  ret %struct.opp_table* %57
}

declare dso_local %struct.opp_table* @dev_pm_opp_get_opp_table(%struct.device*) #1

declare dso_local %struct.opp_table* @ERR_PTR(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
