; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinconf_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinconf_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sprd_pinctrl = type { %struct.sprd_pinctrl_soc_info* }
%struct.sprd_pinctrl_soc_info = type { i32, %struct.sprd_pin_group* }
%struct.sprd_pin_group = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @sprd_pinconf_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pinconf_group_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.sprd_pinctrl*, align 8
  %9 = alloca %struct.sprd_pinctrl_soc_info*, align 8
  %10 = alloca %struct.sprd_pin_group*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.sprd_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.sprd_pinctrl* %13, %struct.sprd_pinctrl** %8, align 8
  %14 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %15 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %14, i32 0, i32 0
  %16 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %15, align 8
  store %struct.sprd_pinctrl_soc_info* %16, %struct.sprd_pinctrl_soc_info** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %19 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %27 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %26, i32 0, i32 1
  %28 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %28, i64 %30
  store %struct.sprd_pin_group* %31, %struct.sprd_pin_group** %10, align 8
  %32 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %10, align 8
  %33 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i64*, i64** %7, align 8
  %40 = call i32 @sprd_pinconf_get(%struct.pinctrl_dev* %37, i32 %38, i64* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %25, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.sprd_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @sprd_pinconf_get(%struct.pinctrl_dev*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
