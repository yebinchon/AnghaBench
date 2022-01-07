; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_find_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_find_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_pinctrl = type { i32 }
%struct.pxa_pinctrl_function = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxa_pinctrl_function* (%struct.pxa_pinctrl*, i8*, %struct.pxa_pinctrl_function*)* @pxa2xx_find_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxa_pinctrl_function* @pxa2xx_find_function(%struct.pxa_pinctrl* %0, i8* %1, %struct.pxa_pinctrl_function* %2) #0 {
  %4 = alloca %struct.pxa_pinctrl_function*, align 8
  %5 = alloca %struct.pxa_pinctrl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pxa_pinctrl_function*, align 8
  %8 = alloca %struct.pxa_pinctrl_function*, align 8
  store %struct.pxa_pinctrl* %0, %struct.pxa_pinctrl** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pxa_pinctrl_function* %2, %struct.pxa_pinctrl_function** %7, align 8
  %9 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %7, align 8
  store %struct.pxa_pinctrl_function* %9, %struct.pxa_pinctrl_function** %8, align 8
  br label %10

10:                                               ; preds = %25, %3
  %11 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %8, align 8
  %12 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %8, align 8
  %18 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @strcmp(i8* %16, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %8, align 8
  store %struct.pxa_pinctrl_function* %23, %struct.pxa_pinctrl_function** %4, align 8
  br label %29

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %8, align 8
  %27 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %26, i32 1
  store %struct.pxa_pinctrl_function* %27, %struct.pxa_pinctrl_function** %8, align 8
  br label %10

28:                                               ; preds = %10
  store %struct.pxa_pinctrl_function* null, %struct.pxa_pinctrl_function** %4, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %4, align 8
  ret %struct.pxa_pinctrl_function* %30
}

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
