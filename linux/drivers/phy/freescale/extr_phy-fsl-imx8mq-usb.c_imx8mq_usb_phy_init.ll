; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8mq-usb.c_imx8mq_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8mq-usb.c_imx8mq_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.imx8mq_usb_phy = type { i64 }

@PHY_CTRL1 = common dso_local global i64 0, align 8
@PHY_CTRL1_VDATSRCENB0 = common dso_local global i32 0, align 4
@PHY_CTRL1_VDATDETENB0 = common dso_local global i32 0, align 4
@PHY_CTRL1_COMMONONN = common dso_local global i32 0, align 4
@PHY_CTRL1_RESET = common dso_local global i32 0, align 4
@PHY_CTRL1_ATERESET = common dso_local global i32 0, align 4
@PHY_CTRL0 = common dso_local global i64 0, align 8
@PHY_CTRL0_REF_SSP_EN = common dso_local global i32 0, align 4
@PHY_CTRL2 = common dso_local global i64 0, align 8
@PHY_CTRL2_TXENABLEN0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @imx8mq_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8mq_usb_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.imx8mq_usb_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.imx8mq_usb_phy* @phy_get_drvdata(%struct.phy* %5)
  store %struct.imx8mq_usb_phy* %6, %struct.imx8mq_usb_phy** %3, align 8
  %7 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %3, align 8
  %8 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PHY_CTRL1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @PHY_CTRL1_VDATSRCENB0, align 4
  %14 = load i32, i32* @PHY_CTRL1_VDATDETENB0, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PHY_CTRL1_COMMONONN, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @PHY_CTRL1_RESET, align 4
  %22 = load i32, i32* @PHY_CTRL1_ATERESET, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %3, align 8
  %28 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PHY_CTRL1, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %3, align 8
  %34 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PHY_CTRL0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @PHY_CTRL0_REF_SSP_EN, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %3, align 8
  %44 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PHY_CTRL0, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %3, align 8
  %50 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PHY_CTRL2, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @PHY_CTRL2_TXENABLEN0, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %3, align 8
  %60 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PHY_CTRL2, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %3, align 8
  %66 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PHY_CTRL1, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @PHY_CTRL1_RESET, align 4
  %72 = load i32, i32* @PHY_CTRL1_ATERESET, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %3, align 8
  %79 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PHY_CTRL1, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  ret i32 0
}

declare dso_local %struct.imx8mq_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
