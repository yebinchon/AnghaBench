; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_get_function_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_get_function_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.tb10x_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pinctrl_dev*, i32)* @tb10x_get_function_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tb10x_get_function_name(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb10x_pinctrl*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %7 = call %struct.tb10x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %6)
  store %struct.tb10x_pinctrl* %7, %struct.tb10x_pinctrl** %5, align 8
  %8 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %5, align 8
  %9 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  ret i8* %15
}

declare dso_local %struct.tb10x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
