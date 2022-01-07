; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_init_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.dev_pin_info* }
%struct.dev_pin_info = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"failed to activate default pinctrl state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_init_done(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dev_pin_info*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.dev_pin_info*, %struct.dev_pin_info** %7, align 8
  store %struct.dev_pin_info* %8, %struct.dev_pin_info** %4, align 8
  %9 = load %struct.dev_pin_info*, %struct.dev_pin_info** %4, align 8
  %10 = icmp ne %struct.dev_pin_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.dev_pin_info*, %struct.dev_pin_info** %4, align 8
  %14 = getelementptr inbounds %struct.dev_pin_info, %struct.dev_pin_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @IS_ERR(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %52

19:                                               ; preds = %12
  %20 = load %struct.dev_pin_info*, %struct.dev_pin_info** %4, align 8
  %21 = getelementptr inbounds %struct.dev_pin_info, %struct.dev_pin_info* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dev_pin_info*, %struct.dev_pin_info** %4, align 8
  %26 = getelementptr inbounds %struct.dev_pin_info, %struct.dev_pin_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %52

30:                                               ; preds = %19
  %31 = load %struct.dev_pin_info*, %struct.dev_pin_info** %4, align 8
  %32 = getelementptr inbounds %struct.dev_pin_info, %struct.dev_pin_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @IS_ERR(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %52

37:                                               ; preds = %30
  %38 = load %struct.dev_pin_info*, %struct.dev_pin_info** %4, align 8
  %39 = getelementptr inbounds %struct.dev_pin_info, %struct.dev_pin_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.dev_pin_info*, %struct.dev_pin_info** %4, align 8
  %42 = getelementptr inbounds %struct.dev_pin_info, %struct.dev_pin_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pinctrl_select_state(%struct.TYPE_2__* %40, i64 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %36, %29, %18, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @pinctrl_select_state(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
