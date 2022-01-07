; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra_phy_xusb_utmi_pad_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra_phy_xusb_utmi_pad_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { i32 }

@USB2_OTG_PD = common dso_local global i32 0, align 4
@USB2_OTG_PD_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy*)* @tegra_phy_xusb_utmi_pad_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_phy_xusb_utmi_pad_power_down(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.tegra_xusb_lane*, align 8
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %7 = load %struct.phy*, %struct.phy** %2, align 8
  %8 = call %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy* %7)
  store %struct.tegra_xusb_lane* %8, %struct.tegra_xusb_lane** %3, align 8
  %9 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %12, align 8
  store %struct.tegra_xusb_padctl* %13, %struct.tegra_xusb_padctl** %4, align 8
  %14 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.phy*, %struct.phy** %2, align 8
  %18 = icmp ne %struct.phy* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %48

20:                                               ; preds = %1
  %21 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL0(i32 %22)
  %24 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @USB2_OTG_PD, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL0(i32 %30)
  %32 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %28, i32 %29, i32 %31)
  %33 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL1(i32 %34)
  %36 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %33, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @USB2_OTG_PD_DR, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL1(i32 %42)
  %44 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %40, i32 %41, i32 %43)
  %45 = call i32 @udelay(i32 2)
  %46 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %47 = call i32 @tegra186_utmi_bias_pad_power_off(%struct.tegra_xusb_padctl* %46)
  br label %48

48:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL0(i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL1(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tegra186_utmi_bias_pad_power_off(%struct.tegra_xusb_padctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
