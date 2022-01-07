; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rzn1_pinctrl = type { %struct.TYPE_2__*, i32, %struct.rzn1_pin_group* }
%struct.TYPE_2__ = type { i32 }
%struct.rzn1_pin_group = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"set mux %s(%d) group %s(%d)\0A\00", align 1
@LOCK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @rzn1_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rzn1_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rzn1_pinctrl*, align 8
  %8 = alloca %struct.rzn1_pin_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = call %struct.rzn1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.rzn1_pinctrl* %12, %struct.rzn1_pinctrl** %7, align 8
  %13 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %7, align 8
  %14 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %13, i32 0, i32 2
  %15 = load %struct.rzn1_pin_group*, %struct.rzn1_pin_group** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rzn1_pin_group, %struct.rzn1_pin_group* %15, i64 %17
  store %struct.rzn1_pin_group* %18, %struct.rzn1_pin_group** %8, align 8
  %19 = load %struct.rzn1_pin_group*, %struct.rzn1_pin_group** %8, align 8
  %20 = getelementptr inbounds %struct.rzn1_pin_group, %struct.rzn1_pin_group* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %7, align 8
  %23 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %7, align 8
  %26 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.rzn1_pin_group*, %struct.rzn1_pin_group** %8, align 8
  %35 = getelementptr inbounds %struct.rzn1_pin_group, %struct.rzn1_pin_group* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %36, i32 %37)
  %39 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %7, align 8
  %40 = load i32, i32* @LOCK_ALL, align 4
  %41 = load i32, i32* @LOCK_ALL, align 4
  %42 = call i32 @rzn1_hw_set_lock(%struct.rzn1_pinctrl* %39, i32 %40, i32 %41)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %64, %3
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %7, align 8
  %49 = load %struct.rzn1_pin_group*, %struct.rzn1_pin_group** %8, align 8
  %50 = getelementptr inbounds %struct.rzn1_pin_group, %struct.rzn1_pin_group* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rzn1_pin_group*, %struct.rzn1_pin_group** %8, align 8
  %57 = getelementptr inbounds %struct.rzn1_pin_group, %struct.rzn1_pin_group* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rzn1_set_hw_pin_func(%struct.rzn1_pinctrl* %48, i32 %55, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %47
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %7, align 8
  %69 = load i32, i32* @LOCK_ALL, align 4
  %70 = call i32 @rzn1_hw_set_lock(%struct.rzn1_pinctrl* %68, i32 %69, i32 0)
  ret i32 0
}

declare dso_local %struct.rzn1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rzn1_hw_set_lock(%struct.rzn1_pinctrl*, i32, i32) #1

declare dso_local i32 @rzn1_set_hw_pin_func(%struct.rzn1_pinctrl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
