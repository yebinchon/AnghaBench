; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.axp20x_pctl = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@AXP20X_FUNC_GPIO_IN = common dso_local global i32 0, align 4
@AXP20X_FUNC_LDO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @axp20x_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.axp20x_pctl*, align 8
  %9 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.axp20x_pctl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.axp20x_pctl* %11, %struct.axp20x_pctl** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @AXP20X_FUNC_GPIO_IN, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %8, align 8
  %19 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @axp20x_pmx_set(%struct.pinctrl_dev* %16, i32 %17, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %69

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @AXP20X_FUNC_LDO, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %8, align 8
  %33 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  br label %43

37:                                               ; preds = %27
  %38 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %8, align 8
  %39 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %69

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @AXP20X_FUNC_LDO, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %69

57:                                               ; preds = %52
  %58 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %8, align 8
  %61 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @axp20x_pmx_set(%struct.pinctrl_dev* %58, i32 %59, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %57, %56, %49, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.axp20x_pctl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @axp20x_pmx_set(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
