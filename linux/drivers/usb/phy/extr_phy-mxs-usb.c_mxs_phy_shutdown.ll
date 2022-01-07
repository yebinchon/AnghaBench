; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i64 }
%struct.mxs_phy = type { i32 }

@BM_USBPHY_CTRL_ENVBUSCHG_WKUP = common dso_local global i32 0, align 4
@BM_USBPHY_CTRL_ENDPDMCHG_WKUP = common dso_local global i32 0, align 4
@BM_USBPHY_CTRL_ENIDCHG_WKUP = common dso_local global i32 0, align 4
@BM_USBPHY_CTRL_ENAUTOSET_USBCLKS = common dso_local global i32 0, align 4
@BM_USBPHY_CTRL_ENAUTOCLR_USBCLKGATE = common dso_local global i32 0, align 4
@BM_USBPHY_CTRL_ENAUTOCLR_PHY_PWD = common dso_local global i32 0, align 4
@BM_USBPHY_CTRL_ENAUTOCLR_CLKGATE = common dso_local global i32 0, align 4
@BM_USBPHY_CTRL_ENAUTO_PWRON_PLL = common dso_local global i32 0, align 4
@HW_USBPHY_CTRL_CLR = common dso_local global i64 0, align 8
@HW_USBPHY_PWD = common dso_local global i64 0, align 8
@BM_USBPHY_CTRL_CLKGATE = common dso_local global i32 0, align 4
@HW_USBPHY_CTRL_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_phy*)* @mxs_phy_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_phy_shutdown(%struct.usb_phy* %0) #0 {
  %2 = alloca %struct.usb_phy*, align 8
  %3 = alloca %struct.mxs_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %2, align 8
  %5 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %6 = call %struct.mxs_phy* @to_mxs_phy(%struct.usb_phy* %5)
  store %struct.mxs_phy* %6, %struct.mxs_phy** %3, align 8
  %7 = load i32, i32* @BM_USBPHY_CTRL_ENVBUSCHG_WKUP, align 4
  %8 = load i32, i32* @BM_USBPHY_CTRL_ENDPDMCHG_WKUP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @BM_USBPHY_CTRL_ENIDCHG_WKUP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BM_USBPHY_CTRL_ENAUTOSET_USBCLKS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @BM_USBPHY_CTRL_ENAUTOCLR_USBCLKGATE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @BM_USBPHY_CTRL_ENAUTOCLR_PHY_PWD, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @BM_USBPHY_CTRL_ENAUTOCLR_CLKGATE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BM_USBPHY_CTRL_ENAUTO_PWRON_PLL, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %24 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HW_USBPHY_CTRL_CLR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %30 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HW_USBPHY_PWD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 -1, i64 %33)
  %35 = load i32, i32* @BM_USBPHY_CTRL_CLKGATE, align 4
  %36 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %37 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HW_USBPHY_CTRL_SET, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %43 = call i64 @is_imx7ulp_phy(%struct.mxs_phy* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %47 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mxs_phy_pll_enable(i64 %48, i32 0)
  br label %50

50:                                               ; preds = %45, %1
  %51 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %52 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_disable_unprepare(i32 %53)
  ret void
}

declare dso_local %struct.mxs_phy* @to_mxs_phy(%struct.usb_phy*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @is_imx7ulp_phy(%struct.mxs_phy*) #1

declare dso_local i32 @mxs_phy_pll_enable(i64, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
