; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_phy_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_phy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_xusb*)* @tegra_xusb_phy_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_xusb_phy_disable(%struct.tegra_xusb* %0) #0 {
  %2 = alloca %struct.tegra_xusb*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_xusb* %0, %struct.tegra_xusb** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.tegra_xusb*, %struct.tegra_xusb** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = load %struct.tegra_xusb*, %struct.tegra_xusb** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @phy_power_off(i32 %17)
  %19 = load %struct.tegra_xusb*, %struct.tegra_xusb** %2, align 8
  %20 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @phy_exit(i32 %25)
  br label %27

27:                                               ; preds = %10
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %4

30:                                               ; preds = %4
  ret void
}

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
