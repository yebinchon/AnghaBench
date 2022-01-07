; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra186_usb3_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra186_usb3_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.tegra_xusb_usb3_port = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"no port found for USB3 lane %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@XUSB_PADCTL_ELPG_PROGRAM_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra186_usb3_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra186_usb3_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.tegra_xusb_lane*, align 8
  %5 = alloca %struct.tegra_xusb_padctl*, align 8
  %6 = alloca %struct.tegra_xusb_usb3_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %10 = load %struct.phy*, %struct.phy** %3, align 8
  %11 = call %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy* %10)
  store %struct.tegra_xusb_lane* %11, %struct.tegra_xusb_lane** %4, align 8
  %12 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %15, align 8
  store %struct.tegra_xusb_padctl* %16, %struct.tegra_xusb_padctl** %5, align 8
  %17 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %20, i32 0, i32 1
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.tegra_xusb_usb3_port* @tegra_xusb_find_usb3_port(%struct.tegra_xusb_padctl* %23, i32 %24)
  store %struct.tegra_xusb_usb3_port* %25, %struct.tegra_xusb_usb3_port** %6, align 8
  %26 = load %struct.tegra_xusb_usb3_port*, %struct.tegra_xusb_usb3_port** %6, align 8
  %27 = icmp ne %struct.tegra_xusb_usb3_port* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %76

34:                                               ; preds = %1
  %35 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %36 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %39 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_1, align 4
  %40 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @SSPX_ELPG_CLAMP_EN_EARLY(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_1, align 4
  %48 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %45, i32 %46, i32 %47)
  %49 = call i32 @usleep_range(i32 100, i32 200)
  %50 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %51 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_1, align 4
  %52 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @SSPX_ELPG_CLAMP_EN(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_1, align 4
  %60 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %57, i32 %58, i32 %59)
  %61 = call i32 @usleep_range(i32 250, i32 350)
  %62 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %63 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_1, align 4
  %64 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @SSPX_ELPG_VCORE_DOWN(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_1, align 4
  %72 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %69, i32 %70, i32 %71)
  %73 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %34, %28
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.tegra_xusb_usb3_port* @tegra_xusb_find_usb3_port(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @SSPX_ELPG_CLAMP_EN_EARLY(i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @SSPX_ELPG_CLAMP_EN(i32) #1

declare dso_local i32 @SSPX_ELPG_VCORE_DOWN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
