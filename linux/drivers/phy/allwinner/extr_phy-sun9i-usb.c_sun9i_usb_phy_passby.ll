; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun9i-usb.c_sun9i_usb_phy_passby.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun9i-usb.c_sun9i_usb_phy_passby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun9i_usb_phy = type { i64, i32 }

@SUNXI_AHB_INCR16_BURST_EN = common dso_local global i32 0, align 4
@SUNXI_AHB_INCR8_BURST_EN = common dso_local global i32 0, align 4
@SUNXI_AHB_INCR4_BURST_EN = common dso_local global i32 0, align 4
@SUNXI_AHB_INCRX_ALIGN_EN = common dso_local global i32 0, align 4
@SUNXI_ULPI_BYPASS_EN = common dso_local global i32 0, align 4
@USBPHY_INTERFACE_MODE_HSIC = common dso_local global i64 0, align 8
@SUNXI_HSIC = common dso_local global i32 0, align 4
@SUNXI_EHCI_HS_FORCE = common dso_local global i32 0, align 4
@SUNXI_HSIC_CONNECT_DET = common dso_local global i32 0, align 4
@SUNXI_HSIC_CONNECT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun9i_usb_phy*, i32)* @sun9i_usb_phy_passby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun9i_usb_phy_passby(%struct.sun9i_usb_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.sun9i_usb_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sun9i_usb_phy* %0, %struct.sun9i_usb_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SUNXI_AHB_INCR16_BURST_EN, align 4
  %8 = load i32, i32* @SUNXI_AHB_INCR8_BURST_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SUNXI_AHB_INCR4_BURST_EN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SUNXI_AHB_INCRX_ALIGN_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUNXI_ULPI_BYPASS_EN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %3, align 8
  %17 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @USBPHY_INTERFACE_MODE_HSIC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i32, i32* @SUNXI_HSIC, align 4
  %23 = load i32, i32* @SUNXI_EHCI_HS_FORCE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SUNXI_HSIC_CONNECT_DET, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SUNXI_HSIC_CONNECT_INT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %21, %2
  %32 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %3, align 8
  %33 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @readl(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %47

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %3, align 8
  %50 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @writel(i32 %48, i32 %51)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
