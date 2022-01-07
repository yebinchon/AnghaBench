; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_sata_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_sata_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { i32 }

@XUSB_PADCTL_USB3_PAD_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra210_sata_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_sata_phy_power_on(%struct.phy* %0) #0 {
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
  %14 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %18 = call i32 @tegra210_sata_uphy_enable(%struct.tegra_xusb_padctl* %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %24 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %25 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %35 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %22, %21
  %37 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tegra210_sata_uphy_enable(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
