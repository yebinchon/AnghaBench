; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_sata_uphy_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_sata_uphy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i32, i32 }
%struct.tegra_xusb_sata_pad = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_xusb_padctl*)* @tegra210_sata_uphy_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_sata_uphy_disable(%struct.tegra_xusb_padctl* %0) #0 {
  %2 = alloca %struct.tegra_xusb_padctl*, align 8
  %3 = alloca %struct.tegra_xusb_sata_pad*, align 8
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %2, align 8
  %4 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.tegra_xusb_sata_pad* @to_sata_pad(i32 %6)
  store %struct.tegra_xusb_sata_pad* %7, %struct.tegra_xusb_sata_pad** %3, align 8
  %8 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %35

26:                                               ; preds = %19
  %27 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @reset_control_assert(i32 %29)
  %31 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_disable_unprepare(i32 %33)
  br label %35

35:                                               ; preds = %26, %25, %18
  %36 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %2, align 8
  %37 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local %struct.tegra_xusb_sata_pad* @to_sata_pad(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
