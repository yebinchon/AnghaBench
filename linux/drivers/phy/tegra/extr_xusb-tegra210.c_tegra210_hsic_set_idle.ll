; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_hsic_set_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_hsic_set_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i32 }

@XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA0 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPD_STROBE = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_padctl*, i32, i32)* @tegra210_hsic_set_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_hsic_set_idle(%struct.tegra_xusb_padctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL0(i32 %9)
  %11 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %8, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA0, align 4
  %13 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPD_STROBE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0, align 4
  %24 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %39

30:                                               ; preds = %3
  %31 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0, align 4
  %32 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %22
  %40 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL0(i32 %42)
  %44 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %40, i32 %41, i32 %43)
  ret i32 0
}

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @XUSB_PADCTL_HSIC_PADX_CTL0(i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
