; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinconf_group_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinconf_group_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.tegra_pmx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_pingroup* }
%struct.tegra_pingroup = type { i32 }

@TEGRA_PINCONF_PARAM_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"LOCK bit cannot be cleared\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"config %lx: %x too big for %d bit register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @tegra_pinconf_group_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pinconf_group_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_pmx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tegra_pingroup*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %23 = call %struct.tegra_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %22)
  store %struct.tegra_pmx* %23, %struct.tegra_pmx** %10, align 8
  %24 = load %struct.tegra_pmx*, %struct.tegra_pmx** %10, align 8
  %25 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %28, i64 %30
  store %struct.tegra_pingroup* %31, %struct.tegra_pingroup** %13, align 8
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %131, %4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %134

36:                                               ; preds = %32
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @TEGRA_PINCONF_UNPACK_PARAM(i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i64*, i64** %8, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @TEGRA_PINCONF_UNPACK_ARG(i64 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.tegra_pmx*, %struct.tegra_pmx** %10, align 8
  %50 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %13, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @tegra_pinconf_reg(%struct.tegra_pmx* %49, %struct.tegra_pingroup* %50, i32 %51, i32 1, i32* %16, i32* %19, i32* %17, i32* %18)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %36
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %5, align 4
  br label %135

57:                                               ; preds = %36
  %58 = load %struct.tegra_pmx*, %struct.tegra_pmx** %10, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @pmx_readl(%struct.tegra_pmx* %58, i32 %59, i32 %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @TEGRA_PINCONF_PARAM_LOCK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %57
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %76 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %135

81:                                               ; preds = %71, %65
  br label %82

82:                                               ; preds = %81, %57
  %83 = load i32, i32* %18, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i32, i32* %18, align 4
  %93 = shl i32 1, %92
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %21, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %21, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %91
  %101 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %102 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i64*, i64** %8, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %18, align 4
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %108, i32 %109, i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %135

114:                                              ; preds = %91
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %17, align 4
  %117 = shl i32 %115, %116
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %20, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %17, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %20, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %20, align 4
  %126 = load %struct.tegra_pmx*, %struct.tegra_pmx** %10, align 8
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @pmx_writel(%struct.tegra_pmx* %126, i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %114
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %32

134:                                              ; preds = %32
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %100, %74, %55
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.tegra_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @TEGRA_PINCONF_UNPACK_PARAM(i64) #1

declare dso_local i32 @TEGRA_PINCONF_UNPACK_ARG(i64) #1

declare dso_local i32 @tegra_pinconf_reg(%struct.tegra_pmx*, %struct.tegra_pingroup*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pmx_readl(%struct.tegra_pmx*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pmx_writel(%struct.tegra_pmx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
