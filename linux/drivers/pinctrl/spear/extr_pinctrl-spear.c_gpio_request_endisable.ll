; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_gpio_request_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_gpio_request_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.spear_pmx = type { %struct.spear_pinctrl_machdata* }
%struct.spear_pinctrl_machdata = type { i32 (%struct.spear_pmx*, i32, i32)* }
%struct.spear_gpio_pingroup = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @gpio_request_endisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_request_endisable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.spear_pmx*, align 8
  %10 = alloca %struct.spear_pinctrl_machdata*, align 8
  %11 = alloca %struct.spear_gpio_pingroup*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.spear_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.spear_pmx* %13, %struct.spear_pmx** %9, align 8
  %14 = load %struct.spear_pmx*, %struct.spear_pmx** %9, align 8
  %15 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %14, i32 0, i32 0
  %16 = load %struct.spear_pinctrl_machdata*, %struct.spear_pinctrl_machdata** %15, align 8
  store %struct.spear_pinctrl_machdata* %16, %struct.spear_pinctrl_machdata** %10, align 8
  %17 = load %struct.spear_pmx*, %struct.spear_pmx** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.spear_gpio_pingroup* @get_gpio_pingroup(%struct.spear_pmx* %17, i32 %18)
  store %struct.spear_gpio_pingroup* %19, %struct.spear_gpio_pingroup** %11, align 8
  %20 = load %struct.spear_gpio_pingroup*, %struct.spear_gpio_pingroup** %11, align 8
  %21 = icmp ne %struct.spear_gpio_pingroup* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load %struct.spear_pmx*, %struct.spear_pmx** %9, align 8
  %24 = load %struct.spear_gpio_pingroup*, %struct.spear_gpio_pingroup** %11, align 8
  %25 = getelementptr inbounds %struct.spear_gpio_pingroup, %struct.spear_gpio_pingroup* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.spear_gpio_pingroup*, %struct.spear_gpio_pingroup** %11, align 8
  %28 = getelementptr inbounds %struct.spear_gpio_pingroup, %struct.spear_gpio_pingroup* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @muxregs_endisable(%struct.spear_pmx* %23, i32 %26, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %4
  %33 = load %struct.spear_pinctrl_machdata*, %struct.spear_pinctrl_machdata** %10, align 8
  %34 = getelementptr inbounds %struct.spear_pinctrl_machdata, %struct.spear_pinctrl_machdata* %33, i32 0, i32 0
  %35 = load i32 (%struct.spear_pmx*, i32, i32)*, i32 (%struct.spear_pmx*, i32, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.spear_pmx*, i32, i32)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.spear_pinctrl_machdata*, %struct.spear_pinctrl_machdata** %10, align 8
  %39 = getelementptr inbounds %struct.spear_pinctrl_machdata, %struct.spear_pinctrl_machdata* %38, i32 0, i32 0
  %40 = load i32 (%struct.spear_pmx*, i32, i32)*, i32 (%struct.spear_pmx*, i32, i32)** %39, align 8
  %41 = load %struct.spear_pmx*, %struct.spear_pmx** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 %40(%struct.spear_pmx* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %32
  ret i32 0
}

declare dso_local %struct.spear_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.spear_gpio_pingroup* @get_gpio_pingroup(%struct.spear_pmx*, i32) #1

declare dso_local i32 @muxregs_endisable(%struct.spear_pmx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
