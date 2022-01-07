; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinconf_group_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinconf_group_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sprd_pinctrl = type { %struct.sprd_pinctrl_soc_info* }
%struct.sprd_pinctrl_soc_info = type { i32, %struct.sprd_pin_group* }
%struct.sprd_pin_group = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @sprd_pinconf_group_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pinconf_group_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sprd_pinctrl*, align 8
  %11 = alloca %struct.sprd_pinctrl_soc_info*, align 8
  %12 = alloca %struct.sprd_pin_group*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = call %struct.sprd_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.sprd_pinctrl* %17, %struct.sprd_pinctrl** %10, align 8
  %18 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %10, align 8
  %19 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %18, i32 0, i32 0
  %20 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %19, align 8
  store %struct.sprd_pinctrl_soc_info* %20, %struct.sprd_pinctrl_soc_info** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %11, align 8
  %23 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %64

29:                                               ; preds = %4
  %30 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %11, align 8
  %31 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %30, i32 0, i32 1
  %32 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %32, i64 %34
  store %struct.sprd_pin_group* %35, %struct.sprd_pin_group** %12, align 8
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %60, %29
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %12, align 8
  %39 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %12, align 8
  %44 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @sprd_pinconf_set(%struct.pinctrl_dev* %50, i32 %51, i64* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %36

63:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %57, %26
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.sprd_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @sprd_pinconf_set(%struct.pinctrl_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
