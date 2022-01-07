; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_get_group_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-gemini.c_gemini_get_group_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.pinctrl_dev = type { i32 }
%struct.gemini_pmx = type { i64, i64, i64 }

@gemini_3512_pin_groups = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"pflashgrp\00", align 1
@pflash_3512_pins_extended = common dso_local global i32* null, align 8
@gemini_3516_pin_groups = common dso_local global %struct.TYPE_3__* null, align 8
@pflash_3516_pins_extended = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32**, i32*)* @gemini_get_group_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_get_group_pins(%struct.pinctrl_dev* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.gemini_pmx*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %12 = call %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.gemini_pmx* %12, %struct.gemini_pmx** %10, align 8
  %13 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %14 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %4
  %18 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %19 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gemini_3512_pin_groups, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load i32*, i32** @pflash_3512_pins_extended, align 8
  %33 = load i32**, i32*** %8, align 8
  store i32* %32, i32** %33, align 8
  %34 = load i32*, i32** @pflash_3512_pins_extended, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %103

37:                                               ; preds = %22, %17, %4
  %38 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %39 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %44 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gemini_3516_pin_groups, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcmp(i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load i32*, i32** @pflash_3516_pins_extended, align 8
  %58 = load i32**, i32*** %8, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** @pflash_3516_pins_extended, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %103

62:                                               ; preds = %47, %42, %37
  %63 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %64 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gemini_3512_pin_groups, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32**, i32*** %8, align 8
  store i32* %73, i32** %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gemini_3512_pin_groups, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %67, %62
  %83 = load %struct.gemini_pmx*, %struct.gemini_pmx** %10, align 8
  %84 = getelementptr inbounds %struct.gemini_pmx, %struct.gemini_pmx* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gemini_3516_pin_groups, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32**, i32*** %8, align 8
  store i32* %93, i32** %94, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gemini_3516_pin_groups, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %87, %82
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %56, %31
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.gemini_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
