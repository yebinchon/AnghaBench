; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-artpec6.c_artpec6_pmx_select_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-artpec6.c_artpec6_pmx_select_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64*, i32 }
%struct.pinctrl_dev = type { i32 }
%struct.artpec6_pmx = type { i64 }

@artpec6_pin_groups = common dso_local global %struct.TYPE_2__* null, align 8
@ARTPEC6_MAX_MUXABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@ARTPEC6_CONFIG_0 = common dso_local global i32 0, align 4
@ARTPEC6_PINMUX_SEL_SHIFT = common dso_local global i32 0, align 4
@ARTPEC6_PINMUX_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, i32, i32, i32)* @artpec6_pmx_select_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_pmx_select_func(%struct.pinctrl_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.artpec6_pmx*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.artpec6_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.artpec6_pmx* %15, %struct.artpec6_pmx** %13, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %100, %4
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @artpec6_pin_groups, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %17, %23
  br i1 %24, label %25, label %103

25:                                               ; preds = %16
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @artpec6_pin_groups, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ARTPEC6_MAX_MUXABLE, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %100

39:                                               ; preds = %25
  %40 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @artpec6_pmx_get_fname(%struct.pinctrl_dev* %40, i32 %41)
  %43 = call i32 @strcmp(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ARTPEC6_CONFIG_0, align 4
  %47 = load i32, i32* @ARTPEC6_PINMUX_SEL_SHIFT, align 4
  %48 = shl i32 %46, %47
  store i32 %48, i32* %10, align 4
  br label %66

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @artpec6_pin_groups, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ARTPEC6_PINMUX_SEL_SHIFT, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %10, align 4
  br label %65

61:                                               ; preds = %49
  %62 = load i32, i32* @ARTPEC6_CONFIG_0, align 4
  %63 = load i32, i32* @ARTPEC6_PINMUX_SEL_SHIFT, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %52
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @artpec6_pin_groups, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @artpec6_pmx_reg_offset(i64 %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %13, align 8
  %79 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = call i32 @readl(i64 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @ARTPEC6_PINMUX_SEL_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %13, align 8
  %94 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = call i32 @writel(i32 %92, i64 %98)
  br label %100

100:                                              ; preds = %66, %38
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %16

103:                                              ; preds = %16
  ret void
}

declare dso_local %struct.artpec6_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @artpec6_pmx_get_fname(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @artpec6_pmx_reg_offset(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
