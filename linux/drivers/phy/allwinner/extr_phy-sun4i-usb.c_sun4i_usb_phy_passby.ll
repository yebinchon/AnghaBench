; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_passby.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_passby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_usb_phy = type { i32, i32 }
%struct.sun4i_usb_phy_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SUNXI_AHB_ICHR8_EN = common dso_local global i32 0, align 4
@SUNXI_AHB_INCR4_BURST_EN = common dso_local global i32 0, align 4
@SUNXI_AHB_INCRX_ALIGN_EN = common dso_local global i32 0, align 4
@SUNXI_ULPI_BYPASS_EN = common dso_local global i32 0, align 4
@sun8i_a83t_phy = common dso_local global i64 0, align 8
@SUNXI_EHCI_HS_FORCE = common dso_local global i32 0, align 4
@SUNXI_HSIC_CONNECT_INT = common dso_local global i32 0, align 4
@SUNXI_HSIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_usb_phy*, i32)* @sun4i_usb_phy_passby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_usb_phy_passby(%struct.sun4i_usb_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.sun4i_usb_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun4i_usb_phy_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sun4i_usb_phy* %0, %struct.sun4i_usb_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %3, align 8
  %9 = call %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy* %8)
  store %struct.sun4i_usb_phy_data* %9, %struct.sun4i_usb_phy_data** %5, align 8
  %10 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %3, align 8
  %11 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %65

15:                                               ; preds = %2
  %16 = load i32, i32* @SUNXI_AHB_ICHR8_EN, align 4
  %17 = load i32, i32* @SUNXI_AHB_INCR4_BURST_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SUNXI_AHB_INCRX_ALIGN_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SUNXI_ULPI_BYPASS_EN, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %24 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @sun8i_a83t_phy, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %15
  %31 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %3, align 8
  %32 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* @SUNXI_EHCI_HS_FORCE, align 4
  %37 = load i32, i32* @SUNXI_HSIC_CONNECT_INT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SUNXI_HSIC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %35, %30, %15
  %44 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %3, align 8
  %45 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @readl(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %3, align 8
  %62 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @writel(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %14
  ret void
}

declare dso_local %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
