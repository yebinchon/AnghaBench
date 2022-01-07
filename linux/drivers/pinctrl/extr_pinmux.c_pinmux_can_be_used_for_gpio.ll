; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_can_be_used_for_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_can_be_used_for_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinmux_ops* }
%struct.pinmux_ops = type { i64 }
%struct.pin_desc = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinmux_can_be_used_for_gpio(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pin_desc*, align 8
  %7 = alloca %struct.pinmux_ops*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %8, i32 %9)
  store %struct.pin_desc* %10, %struct.pin_desc** %6, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pinmux_ops*, %struct.pinmux_ops** %14, align 8
  store %struct.pinmux_ops* %15, %struct.pinmux_ops** %7, align 8
  %16 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %17 = icmp ne %struct.pin_desc* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.pinmux_ops*, %struct.pinmux_ops** %7, align 8
  %21 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %26 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %46

30:                                               ; preds = %24, %19
  %31 = load %struct.pinmux_ops*, %struct.pinmux_ops** %7, align 8
  %32 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %37 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %35, %30
  %43 = phi i1 [ false, %30 ], [ %41, %35 ]
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %29, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
