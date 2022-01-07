; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_ltq_get_group_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_ltq_get_group_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ltq_pinmux_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32**, i32*)* @ltq_get_group_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_get_group_pins(%struct.pinctrl_dev* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ltq_pinmux_info*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %12 = call %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.ltq_pinmux_info* %12, %struct.ltq_pinmux_info** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %15 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %40

21:                                               ; preds = %4
  %22 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %23 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32**, i32*** %8, align 8
  store i32* %29, i32** %30, align 8
  %31 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %32 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %21, %18
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
