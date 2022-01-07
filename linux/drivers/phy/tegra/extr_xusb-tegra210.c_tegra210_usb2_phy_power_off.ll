; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_usb2_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_usb2_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_usb2_pad = type { i64 }
%struct.tegra_xusb_usb2_port = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"no port found for USB2 lane %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0 = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra210_usb2_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_usb2_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.tegra_xusb_lane*, align 8
  %5 = alloca %struct.tegra_xusb_usb2_pad*, align 8
  %6 = alloca %struct.tegra_xusb_padctl*, align 8
  %7 = alloca %struct.tegra_xusb_usb2_port*, align 8
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy* %9)
  store %struct.tegra_xusb_lane* %10, %struct.tegra_xusb_lane** %4, align 8
  %11 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call %struct.tegra_xusb_usb2_pad* @to_usb2_pad(%struct.TYPE_2__* %13)
  store %struct.tegra_xusb_usb2_pad* %14, %struct.tegra_xusb_usb2_pad** %5, align 8
  %15 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %18, align 8
  store %struct.tegra_xusb_padctl* %19, %struct.tegra_xusb_padctl** %6, align 8
  %20 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %21 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.tegra_xusb_usb2_port* @tegra_xusb_find_usb2_port(%struct.tegra_xusb_padctl* %20, i32 %23)
  store %struct.tegra_xusb_usb2_port* %24, %struct.tegra_xusb_usb2_port** %7, align 8
  %25 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %7, align 8
  %26 = icmp ne %struct.tegra_xusb_usb2_port* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %1
  %28 = load %struct.phy*, %struct.phy** %3, align 8
  %29 = getelementptr inbounds %struct.phy, %struct.phy* %28, i32 0, i32 0
  %30 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %74

36:                                               ; preds = %1
  %37 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %38 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, %struct.tegra_xusb_usb2_pad* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %66

48:                                               ; preds = %36
  %49 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %5, align 8
  %50 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, %struct.tegra_xusb_usb2_pad* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %66

55:                                               ; preds = %48
  %56 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %57 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0, align 4
  %58 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0_PD, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0, align 4
  %65 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %54, %47
  %67 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %7, align 8
  %68 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @regulator_disable(i32 %69)
  %71 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %72 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %66, %27
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.tegra_xusb_usb2_pad* @to_usb2_pad(%struct.TYPE_2__*) #1

declare dso_local %struct.tegra_xusb_usb2_port* @tegra_xusb_find_usb2_port(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
