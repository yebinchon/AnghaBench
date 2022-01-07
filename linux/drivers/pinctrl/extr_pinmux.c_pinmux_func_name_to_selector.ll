; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_func_name_to_selector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_func_name_to_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinmux_ops* }
%struct.pinmux_ops = type { i32 (%struct.pinctrl_dev.0*)*, i8* (%struct.pinctrl_dev.1*, i32)* }
%struct.pinctrl_dev.0 = type opaque
%struct.pinctrl_dev.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i8*)* @pinmux_func_name_to_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_func_name_to_selector(%struct.pinctrl_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pinmux_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pinmux_ops*, %struct.pinmux_ops** %13, align 8
  store %struct.pinmux_ops* %14, %struct.pinmux_ops** %6, align 8
  %15 = load %struct.pinmux_ops*, %struct.pinmux_ops** %6, align 8
  %16 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.pinctrl_dev.0*)*, i32 (%struct.pinctrl_dev.0*)** %16, align 8
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %19 = bitcast %struct.pinctrl_dev* %18 to %struct.pinctrl_dev.0*
  %20 = call i32 %17(%struct.pinctrl_dev.0* %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %39, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.pinmux_ops*, %struct.pinmux_ops** %6, align 8
  %27 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %26, i32 0, i32 1
  %28 = load i8* (%struct.pinctrl_dev.1*, i32)*, i8* (%struct.pinctrl_dev.1*, i32)** %27, align 8
  %29 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %30 = bitcast %struct.pinctrl_dev* %29 to %struct.pinctrl_dev.1*
  %31 = load i32, i32* %8, align 4
  %32 = call i8* %28(%struct.pinctrl_dev.1* %30, i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strcmp(i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %21

42:                                               ; preds = %21
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
