; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinctrl_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinctrl_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.tegra_pmx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_pingroup* }
%struct.tegra_pingroup = type { i64, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @tegra_pinctrl_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pinctrl_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_pmx*, align 8
  %9 = alloca %struct.tegra_pingroup*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.tegra_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.tegra_pmx* %13, %struct.tegra_pmx** %8, align 8
  %14 = load %struct.tegra_pmx*, %struct.tegra_pmx** %8, align 8
  %15 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %18, i64 %20
  store %struct.tegra_pingroup* %21, %struct.tegra_pingroup** %9, align 8
  %22 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %23 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %100

32:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %36 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %42 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %33

55:                                               ; preds = %50, %33
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %58 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = icmp eq i32 %56, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %100

68:                                               ; preds = %55
  %69 = load %struct.tegra_pmx*, %struct.tegra_pmx** %8, align 8
  %70 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %71 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %74 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @pmx_readl(%struct.tegra_pmx* %69, i32 %72, i64 %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %78 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 3, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %86 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %84, %87
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load %struct.tegra_pmx*, %struct.tegra_pmx** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %94 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %9, align 8
  %97 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @pmx_writel(%struct.tegra_pmx* %91, i32 %92, i32 %95, i64 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %68, %65, %29
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.tegra_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pmx_readl(%struct.tegra_pmx*, i32, i64) #1

declare dso_local i32 @pmx_writel(%struct.tegra_pmx*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
