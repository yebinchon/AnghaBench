; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_init_rc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_init_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_pcie_priv = type { i64 }

@PCL_APP_PM0 = common dso_local global i64 0, align 8
@PCL_SYS_AUX_PWR_DET = common dso_local global i32 0, align 4
@PCL_PINCTRL0 = common dso_local global i64 0, align 8
@PCL_PERST_NOE_REGVAL = common dso_local global i32 0, align 4
@PCL_PERST_OUT_REGVAL = common dso_local global i32 0, align 4
@PCL_PERST_PLDN_REGVAL = common dso_local global i32 0, align 4
@PCL_PERST_NOE_REGEN = common dso_local global i32 0, align 4
@PCL_PERST_OUT_REGEN = common dso_local global i32 0, align 4
@PCL_PERST_PLDN_REGEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_pcie_priv*)* @uniphier_pcie_init_rc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_pcie_init_rc(%struct.uniphier_pcie_priv* %0) #0 {
  %2 = alloca %struct.uniphier_pcie_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.uniphier_pcie_priv* %0, %struct.uniphier_pcie_priv** %2, align 8
  %4 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %2, align 8
  %5 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PCL_APP_PM0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @PCL_SYS_AUX_PWR_DET, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %2, align 8
  %15 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCL_APP_PM0, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %2, align 8
  %21 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCL_PINCTRL0, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @PCL_PERST_NOE_REGVAL, align 4
  %27 = load i32, i32* @PCL_PERST_OUT_REGVAL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PCL_PERST_PLDN_REGVAL, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @PCL_PERST_NOE_REGEN, align 4
  %35 = load i32, i32* @PCL_PERST_OUT_REGEN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PCL_PERST_PLDN_REGEN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %2, align 8
  %43 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCL_PINCTRL0, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %2, align 8
  %49 = call i32 @uniphier_pcie_ltssm_enable(%struct.uniphier_pcie_priv* %48, i32 0)
  %50 = call i32 @usleep_range(i32 100000, i32 200000)
  %51 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %2, align 8
  %52 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PCL_PINCTRL0, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @PCL_PERST_OUT_REGVAL, align 4
  %58 = load i32, i32* @PCL_PERST_OUT_REGEN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %2, align 8
  %64 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCL_PINCTRL0, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @uniphier_pcie_ltssm_enable(%struct.uniphier_pcie_priv*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
