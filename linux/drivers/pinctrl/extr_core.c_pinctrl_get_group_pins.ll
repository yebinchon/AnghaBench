; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_get_group_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_get_group_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinctrl_ops* }
%struct.pinctrl_ops = type { i32 (%struct.pinctrl_dev.0*, i32, i32**, i32*)* }
%struct.pinctrl_dev.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_get_group_pins(%struct.pinctrl_dev* %0, i8* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pinctrl_ops*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %13 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %15, align 8
  store %struct.pinctrl_ops* %16, %struct.pinctrl_ops** %10, align 8
  %17 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %10, align 8
  %18 = getelementptr inbounds %struct.pinctrl_ops, %struct.pinctrl_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.pinctrl_dev.0*, i32, i32**, i32*)*, i32 (%struct.pinctrl_dev.0*, i32, i32**, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.pinctrl_dev.0*, i32, i32**, i32*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %42

24:                                               ; preds = %4
  %25 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @pinctrl_get_group_selector(%struct.pinctrl_dev* %25, i8* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %10, align 8
  %34 = getelementptr inbounds %struct.pinctrl_ops, %struct.pinctrl_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.pinctrl_dev.0*, i32, i32**, i32*)*, i32 (%struct.pinctrl_dev.0*, i32, i32**, i32*)** %34, align 8
  %36 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %37 = bitcast %struct.pinctrl_dev* %36 to %struct.pinctrl_dev.0*
  %38 = load i32, i32* %11, align 4
  %39 = load i32**, i32*** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 %35(%struct.pinctrl_dev.0* %37, i32 %38, i32** %39, i32* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %32, %30, %21
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @pinctrl_get_group_selector(%struct.pinctrl_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
