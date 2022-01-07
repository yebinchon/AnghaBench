; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_usb3_set_lfps_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_usb3_set_lfps_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i64 }
%struct.tegra_xusb_port = type { %struct.tegra_xusb_lane* }
%struct.tegra_xusb_lane = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_MISC_PAD_S0_CTL1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_IDLE_MODE_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_IDLE_MODE_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_TERM_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_MODE_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_IDLE_MODE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_padctl*, i32, i32)* @tegra210_usb3_set_lfps_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_usb3_set_lfps_detect(%struct.tegra_xusb_padctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_xusb_padctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_xusb_port*, align 8
  %9 = alloca %struct.tegra_xusb_lane*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.tegra_xusb_port* @tegra_xusb_find_port(%struct.tegra_xusb_padctl* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %13)
  store %struct.tegra_xusb_port* %14, %struct.tegra_xusb_port** %8, align 8
  %15 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %8, align 8
  %16 = icmp ne %struct.tegra_xusb_port* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %8, align 8
  %22 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %21, i32 0, i32 0
  %23 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %22, align 8
  store %struct.tegra_xusb_lane* %23, %struct.tegra_xusb_lane** %9, align 8
  %24 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %9, align 8
  %25 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %28 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %9, align 8
  %33 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL1(i32 %34)
  store i32 %35, i32* %11, align 4
  br label %38

36:                                               ; preds = %20
  %37 = load i32, i32* @XUSB_PADCTL_UPHY_MISC_PAD_S0_CTL1, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_IDLE_MODE_MASK, align 4
  %43 = load i32, i32* @XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_IDLE_MODE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* @XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_TERM_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_MODE_OVRD, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %38
  %55 = load i32, i32* @XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_IDLE_MODE_VAL, align 4
  %56 = load i32, i32* @XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_IDLE_MODE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_TERM_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @XUSB_PADCTL_UPHY_MISC_PAD_CTL1_AUX_RX_MODE_OVRD, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %54, %38
  %65 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %65, i32 %66, i32 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.tegra_xusb_port* @tegra_xusb_find_port(%struct.tegra_xusb_padctl*, i8*, i32) #1

declare dso_local i32 @XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL1(i32) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
