; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_pmx_get_func_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_pmx_get_func_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pxa_pinctrl = type { %struct.pxa_pinctrl_function* }
%struct.pxa_pinctrl_function = type { i8**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i8***, i32*)* @pxa2xx_pmx_get_func_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_pmx_get_func_groups(%struct.pinctrl_dev* %0, i32 %1, i8*** %2, i32* %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pxa_pinctrl*, align 8
  %10 = alloca %struct.pxa_pinctrl_function*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.pxa_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.pxa_pinctrl* %12, %struct.pxa_pinctrl** %9, align 8
  %13 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %9, align 8
  %14 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %13, i32 0, i32 0
  %15 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %15, i64 %17
  store %struct.pxa_pinctrl_function* %18, %struct.pxa_pinctrl_function** %10, align 8
  %19 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %10, align 8
  %20 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8***, i8**** %7, align 8
  store i8** %21, i8*** %22, align 8
  %23 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %10, align 8
  %24 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  ret i32 0
}

declare dso_local %struct.pxa_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
