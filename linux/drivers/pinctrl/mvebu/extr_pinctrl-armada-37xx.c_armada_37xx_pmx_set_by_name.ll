; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_pmx_set_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_pmx_set_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.armada_37xx_pin_group = type { i32, i32*, i32, i32 }
%struct.armada_37xx_pinctrl = type { i32, i32 }

@SELECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"enable function %s group %s\0A\00", align 1
@NB_FUNCS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i8*, %struct.armada_37xx_pin_group*)* @armada_37xx_pmx_set_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_pmx_set_by_name(%struct.pinctrl_dev* %0, i8* %1, %struct.armada_37xx_pin_group* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.armada_37xx_pin_group*, align 8
  %8 = alloca %struct.armada_37xx_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.armada_37xx_pin_group* %2, %struct.armada_37xx_pin_group** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.armada_37xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.armada_37xx_pinctrl* %14, %struct.armada_37xx_pinctrl** %8, align 8
  %15 = load i32, i32* @SELECTION, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %17 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %8, align 8
  %20 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %24 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %25)
  %27 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %28 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NB_FUNCS, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @match_string(i32 %29, i32 %30, i8* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %3
  %39 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %40 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %8, align 8
  %47 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %38, %35
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.armada_37xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32 @match_string(i32, i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
