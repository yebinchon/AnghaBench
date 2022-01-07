; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rk805.c__rk805_pinctrl_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rk805.c__rk805_pinctrl_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rk805_pctrl_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RK805_PINMUX_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"set gpio%d GPIO failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't find function mux %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @_rk805_pinctrl_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rk805_pinctrl_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rk805_pctrl_info*, align 8
  %9 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.rk805_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.rk805_pctrl_info* %11, %struct.rk805_pctrl_info** %8, align 8
  %12 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %8, align 8
  %13 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @RK805_PINMUX_GPIO, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %8, align 8
  %28 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %8, align 8
  %33 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %8, align 8
  %41 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %8, align 8
  %49 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regmap_update_bits(i32 %31, i32 %39, i32 %47, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %26
  %60 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %8, align 8
  %61 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %76

66:                                               ; preds = %26
  br label %75

67:                                               ; preds = %22
  %68 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %8, align 8
  %69 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %67, %59, %21
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.rk805_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
