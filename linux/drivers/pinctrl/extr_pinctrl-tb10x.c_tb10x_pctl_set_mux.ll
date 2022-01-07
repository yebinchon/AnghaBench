; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_pctl_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_pctl_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.tb10x_pinctrl = type { i32, %struct.TYPE_2__*, i32, %struct.tb10x_pinfuncgrp* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.tb10x_pinfuncgrp = type { i64, i64, i32, i32* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @tb10x_pctl_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb10x_pctl_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb10x_pinctrl*, align 8
  %9 = alloca %struct.tb10x_pinfuncgrp*, align 8
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.tb10x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.tb10x_pinctrl* %12, %struct.tb10x_pinctrl** %8, align 8
  %13 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %14 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %13, i32 0, i32 3
  %15 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %15, i64 %17
  store %struct.tb10x_pinfuncgrp* %18, %struct.tb10x_pinfuncgrp** %9, align 8
  %19 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %9, align 8
  %20 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %110

24:                                               ; preds = %3
  %25 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %26 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %29 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %9, align 8
  %32 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %24
  %39 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %40 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %9, align 8
  %43 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %9, align 8
  %49 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %38
  %53 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %54 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %110

58:                                               ; preds = %38, %24
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %85, %58
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %9, align 8
  %62 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %9, align 8
  %67 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %74 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @test_bit(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %80 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %110

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %59

88:                                               ; preds = %59
  %89 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %90 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %9, align 8
  %91 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %9, align 8
  %94 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @tb10x_pinctrl_set_config(%struct.tb10x_pinctrl* %89, i64 %92, i64 %95)
  %97 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %98 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %9, align 8
  %101 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %108 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %88, %78, %52, %23
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.tb10x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @tb10x_pinctrl_set_config(%struct.tb10x_pinctrl*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
