; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rk805.c_rk805_pmx_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rk805.c_rk805_pmx_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.rk805_pctrl_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RK805_PINMUX_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set gpio%d mux failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"set gpio%d direction failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @rk805_pmx_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk805_pmx_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinctrl_gpio_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rk805_pctrl_info*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %13 = call %struct.rk805_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.rk805_pctrl_info* %13, %struct.rk805_pctrl_info** %10, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @RK805_PINMUX_GPIO, align 4
  %17 = call i32 @_rk805_pinctrl_set_mux(%struct.pinctrl_dev* %14, i32 %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %10, align 8
  %22 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %86

27:                                               ; preds = %4
  %28 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %10, align 8
  %29 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %86

38:                                               ; preds = %27
  %39 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %10, align 8
  %40 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %10, align 8
  %45 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %10, align 8
  %53 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %38
  br label %72

63:                                               ; preds = %38
  %64 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %10, align 8
  %65 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  br label %72

72:                                               ; preds = %63, %62
  %73 = phi i32 [ 0, %62 ], [ %71, %63 ]
  %74 = call i32 @regmap_update_bits(i32 %43, i32 %51, i32 %59, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %10, align 8
  %79 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %86

84:                                               ; preds = %72
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %77, %37, %20
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.rk805_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @_rk805_pinctrl_set_mux(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
