; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.lochnagar_pin_priv = type { i32, %struct.TYPE_2__*, %struct.lochnagar_group*, %struct.lochnagar_func* }
%struct.TYPE_2__ = type { %struct.lochnagar_pin* }
%struct.lochnagar_pin = type { i32 }
%struct.lochnagar_group = type { i64*, i32 }
%struct.lochnagar_func = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Set group %s to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Set pin %s to %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @lochnagar_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lochnagar_pin_priv*, align 8
  %9 = alloca %struct.lochnagar_func*, align 8
  %10 = alloca %struct.lochnagar_group*, align 8
  %11 = alloca %struct.lochnagar_pin*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.lochnagar_pin_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.lochnagar_pin_priv* %13, %struct.lochnagar_pin_priv** %8, align 8
  %14 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %15 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %14, i32 0, i32 3
  %16 = load %struct.lochnagar_func*, %struct.lochnagar_func** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.lochnagar_func, %struct.lochnagar_func* %16, i64 %18
  store %struct.lochnagar_func* %19, %struct.lochnagar_func** %9, align 8
  %20 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %21 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %20, i32 0, i32 2
  %22 = load %struct.lochnagar_group*, %struct.lochnagar_group** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %22, i64 %24
  store %struct.lochnagar_group* %25, %struct.lochnagar_group** %10, align 8
  %26 = load %struct.lochnagar_func*, %struct.lochnagar_func** %9, align 8
  %27 = getelementptr inbounds %struct.lochnagar_func, %struct.lochnagar_func* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %73 [
    i32 129, label %29
    i32 128, label %46
  ]

29:                                               ; preds = %3
  %30 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %31 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.lochnagar_group*, %struct.lochnagar_group** %10, align 8
  %34 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.lochnagar_func*, %struct.lochnagar_func** %9, align 8
  %37 = getelementptr inbounds %struct.lochnagar_func, %struct.lochnagar_func* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %41 = load %struct.lochnagar_group*, %struct.lochnagar_group** %10, align 8
  %42 = load %struct.lochnagar_func*, %struct.lochnagar_func** %9, align 8
  %43 = getelementptr inbounds %struct.lochnagar_func, %struct.lochnagar_func* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lochnagar_aif_set_mux(%struct.lochnagar_pin_priv* %40, %struct.lochnagar_group* %41, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %76

46:                                               ; preds = %3
  %47 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %48 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.lochnagar_group*, %struct.lochnagar_group** %10, align 8
  %51 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %55, align 8
  store %struct.lochnagar_pin* %56, %struct.lochnagar_pin** %11, align 8
  %57 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %58 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %11, align 8
  %61 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.lochnagar_func*, %struct.lochnagar_func** %9, align 8
  %64 = getelementptr inbounds %struct.lochnagar_func, %struct.lochnagar_func* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %8, align 8
  %68 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %11, align 8
  %69 = load %struct.lochnagar_func*, %struct.lochnagar_func** %9, align 8
  %70 = getelementptr inbounds %struct.lochnagar_func, %struct.lochnagar_func* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @lochnagar_pin_set_mux(%struct.lochnagar_pin_priv* %67, %struct.lochnagar_pin* %68, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %3
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %46, %29
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.lochnagar_pin_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @lochnagar_aif_set_mux(%struct.lochnagar_pin_priv*, %struct.lochnagar_group*, i32) #1

declare dso_local i32 @lochnagar_pin_set_mux(%struct.lochnagar_pin_priv*, %struct.lochnagar_pin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
