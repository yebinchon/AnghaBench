; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-usb.c_rockchip_usb_phy_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-usb.c_rockchip_usb_phy_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_usb_phy = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rockchip_usb_phy_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_usb_phy_action(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rockchip_usb_phy*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rockchip_usb_phy*
  store %struct.rockchip_usb_phy* %5, %struct.rockchip_usb_phy** %3, align 8
  %6 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %3, align 8
  %12 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @of_clk_del_provider(i32 %13)
  %15 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %3, align 8
  %16 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_unregister(i32 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %3, align 8
  %21 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %3, align 8
  %26 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @clk_put(i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @clk_unregister(i32) #1

declare dso_local i32 @clk_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
