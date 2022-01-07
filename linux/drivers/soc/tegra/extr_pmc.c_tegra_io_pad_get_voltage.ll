; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tegra_io_pad_soc = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@PMC_IMPL_E_33V_PWR = common dso_local global i32 0, align 4
@PMC_PWR_DET_VALUE = common dso_local global i32 0, align 4
@TEGRA_IO_PAD_VOLTAGE_1V8 = common dso_local global i32 0, align 4
@TEGRA_IO_PAD_VOLTAGE_3V3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmc*, i32)* @tegra_io_pad_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_io_pad_get_voltage(%struct.tegra_pmc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pmc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_io_pad_soc*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.tegra_io_pad_soc* @tegra_io_pad_find(%struct.tegra_pmc* %8, i32 %9)
  store %struct.tegra_io_pad_soc* %10, %struct.tegra_io_pad_soc** %6, align 8
  %11 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %6, align 8
  %12 = icmp ne %struct.tegra_io_pad_soc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UINT_MAX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %16
  %26 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %34 = load i32, i32* @PMC_IMPL_E_33V_PWR, align 4
  %35 = call i32 @tegra_pmc_readl(%struct.tegra_pmc* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %25
  %37 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %38 = load i32, i32* @PMC_PWR_DET_VALUE, align 4
  %39 = call i32 @tegra_pmc_readl(%struct.tegra_pmc* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %6, align 8
  %43 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @BIT(i64 %44)
  %46 = and i32 %41, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @TEGRA_IO_PAD_VOLTAGE_1V8, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @TEGRA_IO_PAD_VOLTAGE_3V3, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %48, %22, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.tegra_io_pad_soc* @tegra_io_pad_find(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @tegra_pmc_readl(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
