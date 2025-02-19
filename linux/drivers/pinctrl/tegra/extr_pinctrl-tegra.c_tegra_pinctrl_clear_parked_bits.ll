; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinctrl_clear_parked_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinctrl_clear_parked_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.tegra_pingroup* }
%struct.tegra_pingroup = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pmx*)* @tegra_pinctrl_clear_parked_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pinctrl_clear_parked_bits(%struct.tegra_pmx* %0) #0 {
  %2 = alloca %struct.tegra_pmx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pingroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_pmx* %0, %struct.tegra_pmx** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %65, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.tegra_pmx*, %struct.tegra_pmx** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %8
  %17 = load %struct.tegra_pmx*, %struct.tegra_pmx** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %21, i64 %23
  store %struct.tegra_pingroup* %24, %struct.tegra_pingroup** %4, align 8
  %25 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %16
  %30 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.tegra_pmx*, %struct.tegra_pmx** %2, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @pmx_readl(%struct.tegra_pmx* %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %4, align 8
  %54 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.tegra_pmx*, %struct.tegra_pmx** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @pmx_writel(%struct.tegra_pmx* %59, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %48, %16
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %8

68:                                               ; preds = %8
  ret void
}

declare dso_local i32 @pmx_readl(%struct.tegra_pmx*, i32, i32) #1

declare dso_local i32 @pmx_writel(%struct.tegra_pmx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
