; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_mux_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_mux_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ltq_pinmux_info = type { i32* }

@PORT3 = common dso_local global i32 0, align 4
@GPIO3_ALT1 = common dso_local global i32 0, align 4
@MUX_ALT0 = common dso_local global i32 0, align 4
@MUX_ALT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @xway_mux_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xway_mux_apply(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ltq_pinmux_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = call %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.ltq_pinmux_info* %11, %struct.ltq_pinmux_info** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @PORT(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GPIO_ALT1(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PORT3, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @GPIO3_ALT1, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MUX_ALT0, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %7, align 8
  %28 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @GPIO_ALT0(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @PORT_PIN(i32 %34)
  %36 = call i32 @gpio_setbit(i32 %31, i32 %33, i32 %35)
  br label %48

37:                                               ; preds = %21
  %38 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %7, align 8
  %39 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @GPIO_ALT0(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @PORT_PIN(i32 %45)
  %47 = call i32 @gpio_clearbit(i32 %42, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %37, %26
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MUX_ALT1, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %7, align 8
  %55 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @PORT_PIN(i32 %60)
  %62 = call i32 @gpio_setbit(i32 %58, i32 %59, i32 %61)
  br label %73

63:                                               ; preds = %48
  %64 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %7, align 8
  %65 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @PORT_PIN(i32 %70)
  %72 = call i32 @gpio_clearbit(i32 %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %63, %53
  ret i32 0
}

declare dso_local %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @PORT(i32) #1

declare dso_local i32 @GPIO_ALT1(i32) #1

declare dso_local i32 @gpio_setbit(i32, i32, i32) #1

declare dso_local i32 @GPIO_ALT0(i32) #1

declare dso_local i32 @PORT_PIN(i32) #1

declare dso_local i32 @gpio_clearbit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
