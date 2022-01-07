; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_xusb_padctl_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_xusb_padctl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i64, i32 }

@XUSB_PADCTL_ELPG_PROGRAM = common dso_local global i32 0, align 4
@XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN = common dso_local global i32 0, align 4
@XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY = common dso_local global i32 0, align 4
@XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_padctl*)* @tegra124_xusb_padctl_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_xusb_padctl_disable(%struct.tegra_xusb_padctl* %0) #0 {
  %2 = alloca %struct.tegra_xusb_padctl*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %2, align 8
  %4 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %17 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %55

22:                                               ; preds = %15
  %23 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %24 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %25 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %32 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %29, i32 %30, i32 %31)
  %33 = call i32 @usleep_range(i32 100, i32 200)
  %34 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %35 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %36 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %43 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %40, i32 %41, i32 %42)
  %44 = call i32 @usleep_range(i32 100, i32 200)
  %45 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %46 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %47 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %54 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %22, %21, %14
  %56 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %57 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

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
