; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_find_setting_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_find_setting_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_setting = type { i32, i32 }
%struct.mvebu_pinctrl = type { i32 }
%struct.mvebu_pinctrl_group = type { i32, %struct.mvebu_mpp_ctrl_setting* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvebu_mpp_ctrl_setting* (%struct.mvebu_pinctrl*, %struct.mvebu_pinctrl_group*, i8*)* @mvebu_pinctrl_find_setting_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_setting_by_name(%struct.mvebu_pinctrl* %0, %struct.mvebu_pinctrl_group* %1, i8* %2) #0 {
  %4 = alloca %struct.mvebu_mpp_ctrl_setting*, align 8
  %5 = alloca %struct.mvebu_pinctrl*, align 8
  %6 = alloca %struct.mvebu_pinctrl_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mvebu_pinctrl* %0, %struct.mvebu_pinctrl** %5, align 8
  store %struct.mvebu_pinctrl_group* %1, %struct.mvebu_pinctrl_group** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %55, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %6, align 8
  %12 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %9
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %6, align 8
  %18 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %17, i32 0, i32 1
  %19 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %19, i64 %21
  %23 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcmp(i8* %16, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %15
  %28 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %29 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %34 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %6, align 8
  %37 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %36, i32 0, i32 1
  %38 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %38, i64 %40
  %42 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %35, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %32, %27
  %47 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %6, align 8
  %48 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %47, i32 0, i32 1
  %49 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %49, i64 %51
  store %struct.mvebu_mpp_ctrl_setting* %52, %struct.mvebu_mpp_ctrl_setting** %4, align 8
  br label %59

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %15
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %9

58:                                               ; preds = %9
  store %struct.mvebu_mpp_ctrl_setting* null, %struct.mvebu_mpp_ctrl_setting** %4, align 8
  br label %59

59:                                               ; preds = %58, %46
  %60 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %4, align 8
  ret %struct.mvebu_mpp_ctrl_setting* %60
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
