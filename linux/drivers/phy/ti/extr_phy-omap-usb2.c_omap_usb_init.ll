; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.omap_usb = type { i32, i32 }

@OMAP_USB2_CALIBRATE_FALSE_DISCONNECT = common dso_local global i32 0, align 4
@USB2PHY_ANA_CONFIG1 = common dso_local global i32 0, align 4
@USB2PHY_DISCON_BYP_LATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @omap_usb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_usb_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.omap_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.omap_usb* @phy_get_drvdata(%struct.phy* %5)
  store %struct.omap_usb* %6, %struct.omap_usb** %3, align 8
  %7 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %8 = call i32 @omap_usb2_enable_clocks(%struct.omap_usb* %7)
  %9 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %10 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OMAP_USB2_CALIBRATE_FALSE_DISCONNECT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %17 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @USB2PHY_ANA_CONFIG1, align 4
  %20 = call i32 @omap_usb_readl(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @USB2PHY_DISCON_BYP_LATCH, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.omap_usb*, %struct.omap_usb** %3, align 8
  %25 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USB2PHY_ANA_CONFIG1, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @omap_usb_writel(i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %15, %1
  ret i32 0
}

declare dso_local %struct.omap_usb* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @omap_usb2_enable_clocks(%struct.omap_usb*) #1

declare dso_local i32 @omap_usb_readl(i32, i32) #1

declare dso_local i32 @omap_usb_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
