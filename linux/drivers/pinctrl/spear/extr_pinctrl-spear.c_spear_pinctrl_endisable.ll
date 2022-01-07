; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_spear_pinctrl_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_spear_pinctrl_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.spear_pmx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, %struct.spear_pingroup** }
%struct.spear_pingroup = type { i32, i32, %struct.spear_modemux* }
%struct.spear_modemux = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"pinmux group: %s not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32, i32)* @spear_pinctrl_endisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_pinctrl_endisable(%struct.pinctrl_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spear_pmx*, align 8
  %11 = alloca %struct.spear_pingroup*, align 8
  %12 = alloca %struct.spear_modemux*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = call %struct.spear_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.spear_pmx* %16, %struct.spear_pmx** %10, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.spear_pmx*, %struct.spear_pmx** %10, align 8
  %18 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.spear_pingroup**, %struct.spear_pingroup*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.spear_pingroup*, %struct.spear_pingroup** %21, i64 %23
  %25 = load %struct.spear_pingroup*, %struct.spear_pingroup** %24, align 8
  store %struct.spear_pingroup* %25, %struct.spear_pingroup** %11, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %68, %4
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.spear_pingroup*, %struct.spear_pingroup** %11, align 8
  %29 = getelementptr inbounds %struct.spear_pingroup, %struct.spear_pingroup* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %26
  %33 = load %struct.spear_pingroup*, %struct.spear_pingroup** %11, align 8
  %34 = getelementptr inbounds %struct.spear_pingroup, %struct.spear_pingroup* %33, i32 0, i32 2
  %35 = load %struct.spear_modemux*, %struct.spear_modemux** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.spear_modemux, %struct.spear_modemux* %35, i64 %37
  store %struct.spear_modemux* %38, %struct.spear_modemux** %12, align 8
  %39 = load %struct.spear_pmx*, %struct.spear_pmx** %10, align 8
  %40 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %32
  %46 = load %struct.spear_pmx*, %struct.spear_pmx** %10, align 8
  %47 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.spear_modemux*, %struct.spear_modemux** %12, align 8
  %52 = getelementptr inbounds %struct.spear_modemux, %struct.spear_modemux* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  br label %68

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %32
  store i32 1, i32* %14, align 4
  %59 = load %struct.spear_pmx*, %struct.spear_pmx** %10, align 8
  %60 = load %struct.spear_modemux*, %struct.spear_modemux** %12, align 8
  %61 = getelementptr inbounds %struct.spear_modemux, %struct.spear_modemux* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.spear_modemux*, %struct.spear_modemux** %12, align 8
  %64 = getelementptr inbounds %struct.spear_modemux, %struct.spear_modemux* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @muxregs_endisable(%struct.spear_pmx* %59, i32 %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %56
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %26

71:                                               ; preds = %26
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %71
  %75 = load %struct.spear_pmx*, %struct.spear_pmx** %10, align 8
  %76 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.spear_pingroup*, %struct.spear_pingroup** %11, align 8
  %79 = getelementptr inbounds %struct.spear_pingroup, %struct.spear_pingroup* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %85

84:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %74
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.spear_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @muxregs_endisable(%struct.spear_pmx*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
