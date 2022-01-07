; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.tegra_pmc = type { i64 }

@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @tegra_pmc_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pmc_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_pmc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.tegra_pmc* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.tegra_pmc* %11, %struct.tegra_pmc** %6, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ULONG_MAX, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %23 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 32
  store i32 %25, i32* %7, align 4
  %26 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %27 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %28, 32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.tegra_pmc*, %struct.tegra_pmc** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %34 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @WAKE_AOWAKE_STATUS_W(i32 %35)
  %37 = add nsw i64 %32, %36
  %38 = call i32 @writel(i32 1, i64 %37)
  %39 = load %struct.tegra_pmc*, %struct.tegra_pmc** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @WAKE_AOWAKE_TIER2_ROUTING(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %21
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %59

54:                                               ; preds = %21
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.tegra_pmc*, %struct.tegra_pmc** %6, align 8
  %62 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @WAKE_AOWAKE_TIER2_ROUTING(i32 %64)
  %66 = add nsw i64 %63, %65
  %67 = call i32 @writel(i32 %60, i64 %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.tegra_pmc*, %struct.tegra_pmc** %6, align 8
  %74 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %77 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @WAKE_AOWAKE_MASK_W(i32 %78)
  %80 = add nsw i64 %75, %79
  %81 = call i32 @writel(i32 %72, i64 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %59, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.tegra_pmc* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @WAKE_AOWAKE_STATUS_W(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @WAKE_AOWAKE_TIER2_ROUTING(i32) #1

declare dso_local i64 @WAKE_AOWAKE_MASK_W(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
