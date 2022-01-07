; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_find_setting_by_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_find_setting_by_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_setting = type { i64, i32 }
%struct.mvebu_pinctrl = type { i32 }
%struct.mvebu_pinctrl_group = type { i32, %struct.mvebu_mpp_ctrl_setting* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvebu_mpp_ctrl_setting* (%struct.mvebu_pinctrl*, %struct.mvebu_pinctrl_group*, i64)* @mvebu_pinctrl_find_setting_by_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_setting_by_val(%struct.mvebu_pinctrl* %0, %struct.mvebu_pinctrl_group* %1, i64 %2) #0 {
  %4 = alloca %struct.mvebu_mpp_ctrl_setting*, align 8
  %5 = alloca %struct.mvebu_pinctrl*, align 8
  %6 = alloca %struct.mvebu_pinctrl_group*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mvebu_pinctrl* %0, %struct.mvebu_pinctrl** %5, align 8
  store %struct.mvebu_pinctrl_group* %1, %struct.mvebu_pinctrl_group** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %54, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %6, align 8
  %12 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %6, align 8
  %18 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %17, i32 0, i32 1
  %19 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %19, i64 %21
  %23 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %16, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %15
  %27 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %28 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %33 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %6, align 8
  %36 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %35, i32 0, i32 1
  %37 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %37, i64 %39
  %41 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %34, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %31, %26
  %46 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %6, align 8
  %47 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %46, i32 0, i32 1
  %48 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %48, i64 %50
  store %struct.mvebu_mpp_ctrl_setting* %51, %struct.mvebu_mpp_ctrl_setting** %4, align 8
  br label %58

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %15
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %9

57:                                               ; preds = %9
  store %struct.mvebu_mpp_ctrl_setting* null, %struct.mvebu_mpp_ctrl_setting** %4, align 8
  br label %58

58:                                               ; preds = %57, %45
  %59 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %4, align 8
  ret %struct.mvebu_mpp_ctrl_setting* %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
