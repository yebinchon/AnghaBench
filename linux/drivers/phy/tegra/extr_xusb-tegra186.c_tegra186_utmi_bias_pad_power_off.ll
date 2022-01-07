; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra186_utmi_bias_pad_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra186_utmi_bias_pad_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra186_xusb_padctl = type { i64, i32 }

@XUSB_PADCTL_USB2_BIAS_PAD_CTL1 = common dso_local global i32 0, align 4
@USB2_PD_TRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_xusb_padctl*)* @tegra186_utmi_bias_pad_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra186_utmi_bias_pad_power_off(%struct.tegra_xusb_padctl* %0) #0 {
  %2 = alloca %struct.tegra_xusb_padctl*, align 8
  %3 = alloca %struct.tegra186_xusb_padctl*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %2, align 8
  %5 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %6 = call %struct.tegra186_xusb_padctl* @to_tegra186_xusb_padctl(%struct.tegra_xusb_padctl* %5)
  store %struct.tegra186_xusb_padctl* %6, %struct.tegra186_xusb_padctl** %3, align 8
  %7 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.tegra186_xusb_padctl*, %struct.tegra186_xusb_padctl** %3, align 8
  %11 = getelementptr inbounds %struct.tegra186_xusb_padctl, %struct.tegra186_xusb_padctl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %19 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.tegra186_xusb_padctl*, %struct.tegra186_xusb_padctl** %3, align 8
  %23 = getelementptr inbounds %struct.tegra186_xusb_padctl, %struct.tegra186_xusb_padctl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %49

31:                                               ; preds = %21
  %32 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %33 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL1, align 4
  %34 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @USB2_PD_TRK, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL1, align 4
  %41 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %38, i32 %39, i32 %40)
  %42 = load %struct.tegra186_xusb_padctl*, %struct.tegra186_xusb_padctl** %3, align 8
  %43 = getelementptr inbounds %struct.tegra186_xusb_padctl, %struct.tegra186_xusb_padctl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_disable_unprepare(i32 %44)
  %46 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  br label %49

49:                                               ; preds = %31, %27, %17
  ret void
}

declare dso_local %struct.tegra186_xusb_padctl* @to_tegra186_xusb_padctl(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
