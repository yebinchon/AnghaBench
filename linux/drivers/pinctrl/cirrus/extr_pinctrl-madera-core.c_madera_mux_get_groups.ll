; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_mux_get_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_mux_get_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i64 }
%struct.pinctrl_dev = type { i32 }
%struct.madera_pin_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@madera_mux_funcs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i8***, i32*)* @madera_mux_get_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_mux_get_groups(%struct.pinctrl_dev* %0, i32 %1, i8*** %2, i32* %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.madera_pin_private*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.madera_pin_private* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.madera_pin_private* %11, %struct.madera_pin_private** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @madera_mux_funcs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load i8***, i8**** %7, align 8
  store i8** %17, i8*** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @madera_mux_funcs, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  store i32 1, i32* %27, align 4
  br label %35

28:                                               ; preds = %4
  %29 = load %struct.madera_pin_private*, %struct.madera_pin_private** %9, align 8
  %30 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %26
  ret i32 0
}

declare dso_local %struct.madera_pin_private* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
