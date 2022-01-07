; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra_phy_xusb_utmi_pad_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra_phy_xusb_utmi_pad_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { %struct.device* }
%struct.device = type { i32 }
%struct.tegra_xusb_usb2_port = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"no port found for USB2 lane %u\0A\00", align 1
@USB2_OTG_PD = common dso_local global i32 0, align 4
@USB2_OTG_PD_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy*)* @tegra_phy_xusb_utmi_pad_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_phy_xusb_utmi_pad_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.tegra_xusb_lane*, align 8
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca %struct.tegra_xusb_usb2_port*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %9 = load %struct.phy*, %struct.phy** %2, align 8
  %10 = call %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy* %9)
  store %struct.tegra_xusb_lane* %10, %struct.tegra_xusb_lane** %3, align 8
  %11 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %14, align 8
  store %struct.tegra_xusb_padctl* %15, %struct.tegra_xusb_padctl** %4, align 8
  %16 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.phy*, %struct.phy** %2, align 8
  %23 = icmp ne %struct.phy* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %65

25:                                               ; preds = %1
  %26 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.tegra_xusb_usb2_port* @tegra_xusb_find_usb2_port(%struct.tegra_xusb_padctl* %26, i32 %27)
  store %struct.tegra_xusb_usb2_port* %28, %struct.tegra_xusb_usb2_port** %5, align 8
  %29 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %30 = icmp ne %struct.tegra_xusb_usb2_port* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %65

35:                                               ; preds = %25
  %36 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %37 = call i32 @tegra186_utmi_bias_pad_power_on(%struct.tegra_xusb_padctl* %36)
  %38 = call i32 @udelay(i32 2)
  %39 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL0(i32 %40)
  %42 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %39, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @USB2_OTG_PD, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL0(i32 %49)
  %51 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %47, i32 %48, i32 %50)
  %52 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL1(i32 %53)
  %55 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %52, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @USB2_OTG_PD_DR, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL1(i32 %62)
  %64 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %60, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %35, %31, %24
  ret void
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.tegra_xusb_usb2_port* @tegra_xusb_find_usb2_port(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tegra186_utmi_bias_pad_power_on(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL0(i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
