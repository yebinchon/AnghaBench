; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_pmx_get_func_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_pmx_get_func_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pxa_pinctrl = type { %struct.pxa_pinctrl_function* }
%struct.pxa_pinctrl_function = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pinctrl_dev*, i32)* @pxa2xx_pmx_get_func_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pxa2xx_pmx_get_func_name(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa_pinctrl*, align 8
  %6 = alloca %struct.pxa_pinctrl_function*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %8 = call %struct.pxa_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %7)
  store %struct.pxa_pinctrl* %8, %struct.pxa_pinctrl** %5, align 8
  %9 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %10 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %9, i32 0, i32 0
  %11 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %11, i64 %13
  store %struct.pxa_pinctrl_function* %14, %struct.pxa_pinctrl_function** %6, align 8
  %15 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %6, align 8
  %16 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  ret i8* %17
}

declare dso_local %struct.pxa_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
