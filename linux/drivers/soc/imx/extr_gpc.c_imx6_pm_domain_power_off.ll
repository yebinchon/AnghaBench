; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx6_pm_domain_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx6_pm_domain_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.imx_pm_domain = type { i64, i32, i32, i32, i64 }

@GPC_PGC_PDNSCR_OFFS = common dso_local global i64 0, align 8
@GPC_PGC_CTRL_OFFS = common dso_local global i64 0, align 8
@GPC_CNTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*)* @imx6_pm_domain_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_pm_domain_power_off(%struct.generic_pm_domain* %0) #0 {
  %2 = alloca %struct.generic_pm_domain*, align 8
  %3 = alloca %struct.imx_pm_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %2, align 8
  %7 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %8 = call %struct.imx_pm_domain* @to_imx_pm_domain(%struct.generic_pm_domain* %7)
  store %struct.imx_pm_domain* %8, %struct.imx_pm_domain** %3, align 8
  %9 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %10 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %13 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GPC_PGC_PDNSCR_OFFS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @regmap_read(i32 %11, i64 %16, i32* %6)
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 63
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 63
  store i32 %22, i32* %5, align 4
  %23 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %24 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %27 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GPC_PGC_CTRL_OFFS, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @regmap_update_bits(i32 %25, i64 %30, i32 1, i32 1)
  %32 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %33 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @BIT(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %37 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @GPC_CNTR, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @regmap_update_bits(i32 %38, i64 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %47 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DIV_ROUND_UP(i32 %45, i32 %48)
  %50 = call i32 @udelay(i32 %49)
  %51 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %52 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %1
  %56 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %57 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @regulator_disable(i64 %58)
  br label %60

60:                                               ; preds = %55, %1
  ret i32 0
}

declare dso_local %struct.imx_pm_domain* @to_imx_pm_domain(%struct.generic_pm_domain*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
