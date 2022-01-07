; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx6-mipi-csi2.c_dw_mipi_csi2_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx6-mipi-csi2.c_dw_mipi_csi2_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi2_dev = type { i64 }

@PHY_TESTCLR = common dso_local global i32 0, align 4
@CSI2_PHY_TST_CTRL0 = common dso_local global i64 0, align 8
@CSI2_PHY_TST_CTRL1 = common dso_local global i64 0, align 8
@PHY_TESTCLK = common dso_local global i32 0, align 4
@PHY_TESTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi2_dev*, i32, i32)* @dw_mipi_csi2_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_csi2_phy_write(%struct.csi2_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.csi2_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csi2_dev* %0, %struct.csi2_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @PHY_TESTCLR, align 4
  %8 = load %struct.csi2_dev*, %struct.csi2_dev** %4, align 8
  %9 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CSI2_PHY_TST_CTRL0, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.csi2_dev*, %struct.csi2_dev** %4, align 8
  %15 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CSI2_PHY_TST_CTRL1, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 0, i64 %18)
  %20 = load %struct.csi2_dev*, %struct.csi2_dev** %4, align 8
  %21 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CSI2_PHY_TST_CTRL0, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load i32, i32* @PHY_TESTCLK, align 4
  %27 = load %struct.csi2_dev*, %struct.csi2_dev** %4, align 8
  %28 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CSI2_PHY_TST_CTRL0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load i32, i32* @PHY_TESTEN, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.csi2_dev*, %struct.csi2_dev** %4, align 8
  %37 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CSI2_PHY_TST_CTRL1, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.csi2_dev*, %struct.csi2_dev** %4, align 8
  %43 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CSI2_PHY_TST_CTRL0, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.csi2_dev*, %struct.csi2_dev** %4, align 8
  %50 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CSI2_PHY_TST_CTRL1, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load i32, i32* @PHY_TESTCLK, align 4
  %56 = load %struct.csi2_dev*, %struct.csi2_dev** %4, align 8
  %57 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CSI2_PHY_TST_CTRL0, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.csi2_dev*, %struct.csi2_dev** %4, align 8
  %63 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CSI2_PHY_TST_CTRL0, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 0, i64 %66)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
