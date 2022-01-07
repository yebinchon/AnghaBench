; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i32, i32 }

@XUSB_PADCTL_ELPG_PROGRAM = common dso_local global i32 0, align 4
@XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY = common dso_local global i32 0, align 4
@XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_padctl*)* @tegra_xusb_padctl_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_padctl_enable(%struct.tegra_xusb_padctl* %0) #0 {
  %2 = alloca %struct.tegra_xusb_padctl*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %2, align 8
  %4 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %15 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %16 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %24 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %21, i32 %22, i32 %23)
  %25 = call i32 @usleep_range(i32 100, i32 200)
  %26 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %27 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %28 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %36 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %33, i32 %34, i32 %35)
  %37 = call i32 @usleep_range(i32 100, i32 200)
  %38 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %39 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %40 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %48 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %13, %12
  %50 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %51 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
