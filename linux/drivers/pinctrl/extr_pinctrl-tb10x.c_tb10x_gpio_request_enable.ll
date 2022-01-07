; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.tb10x_pinctrl = type { i32, i32, i32, %struct.TYPE_2__*, %struct.tb10x_pinfuncgrp* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.tb10x_pinfuncgrp = type { i32, i32, i32, i32*, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @tb10x_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb10x_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb10x_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tb10x_pinfuncgrp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.tb10x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.tb10x_pinctrl* %17, %struct.tb10x_pinctrl** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %18 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %19 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %102, %3
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %24 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %105

27:                                               ; preds = %21
  %28 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %29 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %28, i32 0, i32 4
  %30 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %30, i64 %32
  store %struct.tb10x_pinfuncgrp* %33, %struct.tb10x_pinfuncgrp** %12, align 8
  %34 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %12, align 8
  %35 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %12, align 8
  %38 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %102

43:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %98, %43
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %12, align 8
  %47 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %12, align 8
  %53 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %51, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %50
  %61 = load %struct.tb10x_pinfuncgrp*, %struct.tb10x_pinfuncgrp** %12, align 8
  %62 = getelementptr inbounds %struct.tb10x_pinfuncgrp, %struct.tb10x_pinfuncgrp* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %10, align 4
  br label %96

68:                                               ; preds = %60
  %69 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %70 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %68
  %79 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %80 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %91 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %122

95:                                               ; preds = %78, %68
  br label %96

96:                                               ; preds = %95, %65
  br label %101

97:                                               ; preds = %50
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %44

101:                                              ; preds = %96, %44
  br label %102

102:                                              ; preds = %101, %42
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %21

105:                                              ; preds = %21
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %108 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @set_bit(i32 %106, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %105
  %114 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @tb10x_pinctrl_set_config(%struct.tb10x_pinctrl* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %105
  %119 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %8, align 8
  %120 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %119, i32 0, i32 1
  %121 = call i32 @mutex_unlock(i32* %120)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %89
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.tb10x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @tb10x_pinctrl_set_config(%struct.tb10x_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
