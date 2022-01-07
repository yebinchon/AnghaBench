; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_get_group_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_get_group_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.madera_pin_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@madera_pin_single_group_pins = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32**, i32*)* @madera_get_group_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_get_group_pins(%struct.pinctrl_dev* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.madera_pin_private*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.madera_pin_private* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.madera_pin_private* %11, %struct.madera_pin_private** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.madera_pin_private*, %struct.madera_pin_private** %9, align 8
  %14 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %12, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %4
  %20 = load %struct.madera_pin_private*, %struct.madera_pin_private** %9, align 8
  %21 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32**, i32*** %7, align 8
  store i32* %29, i32** %30, align 8
  %31 = load %struct.madera_pin_private*, %struct.madera_pin_private** %9, align 8
  %32 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %56

42:                                               ; preds = %4
  %43 = load %struct.madera_pin_private*, %struct.madera_pin_private** %9, align 8
  %44 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32*, i32** @madera_pin_single_group_pins, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32**, i32*** %7, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i32*, i32** %8, align 8
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %42, %19
  ret i32 0
}

declare dso_local %struct.madera_pin_private* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
