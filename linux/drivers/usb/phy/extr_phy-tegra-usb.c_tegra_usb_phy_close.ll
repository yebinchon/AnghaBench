; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_tegra_usb_phy_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_tegra_usb_phy_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_usb_phy = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_usb_phy*)* @tegra_usb_phy_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_usb_phy_close(%struct.tegra_usb_phy* %0) #0 {
  %2 = alloca %struct.tegra_usb_phy*, align 8
  store %struct.tegra_usb_phy* %0, %struct.tegra_usb_phy** %2, align 8
  %3 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %2, align 8
  %4 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @IS_ERR(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regulator_disable(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %2, align 8
  %15 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %2, align 8
  %20 = call i32 @utmip_pad_close(%struct.tegra_usb_phy* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %2, align 8
  %23 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  ret void
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @utmip_pad_close(%struct.tegra_usb_phy*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
