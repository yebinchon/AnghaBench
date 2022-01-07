; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ralink/extr_phy-ralink-usb.c_ralink_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ralink/extr_phy-ralink-usb.c_ralink_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ralink_usb_phy = type { i32 }

@OFS_U2_PHY_AC2 = common dso_local global i32 0, align 4
@OFS_U2_PHY_ACR0 = common dso_local global i32 0, align 4
@OFS_U2_PHY_DCR0 = common dso_local global i32 0, align 4
@OFS_U2_PHY_AC0 = common dso_local global i32 0, align 4
@OFS_U2_PHY_AC1 = common dso_local global i32 0, align 4
@OFS_U2_PHY_ACR3 = common dso_local global i32 0, align 4
@OFS_U2_PHY_DTM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ralink_usb_phy*)* @ralink_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ralink_usb_phy_init(%struct.ralink_usb_phy* %0) #0 {
  %2 = alloca %struct.ralink_usb_phy*, align 8
  store %struct.ralink_usb_phy* %0, %struct.ralink_usb_phy** %2, align 8
  %3 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %4 = load i32, i32* @OFS_U2_PHY_AC2, align 4
  %5 = call i32 @u2_phy_r32(%struct.ralink_usb_phy* %3, i32 %4)
  %6 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %7 = load i32, i32* @OFS_U2_PHY_ACR0, align 4
  %8 = call i32 @u2_phy_r32(%struct.ralink_usb_phy* %6, i32 %7)
  %9 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %10 = load i32, i32* @OFS_U2_PHY_DCR0, align 4
  %11 = call i32 @u2_phy_r32(%struct.ralink_usb_phy* %9, i32 %10)
  %12 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %13 = load i32, i32* @OFS_U2_PHY_DCR0, align 4
  %14 = call i32 @u2_phy_w32(%struct.ralink_usb_phy* %12, i32 16776962, i32 %13)
  %15 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %16 = load i32, i32* @OFS_U2_PHY_DCR0, align 4
  %17 = call i32 @u2_phy_r32(%struct.ralink_usb_phy* %15, i32 %16)
  %18 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %19 = load i32, i32* @OFS_U2_PHY_DCR0, align 4
  %20 = call i32 @u2_phy_w32(%struct.ralink_usb_phy* %18, i32 5592322, i32 %19)
  %21 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %22 = load i32, i32* @OFS_U2_PHY_DCR0, align 4
  %23 = call i32 @u2_phy_r32(%struct.ralink_usb_phy* %21, i32 %22)
  %24 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %25 = load i32, i32* @OFS_U2_PHY_DCR0, align 4
  %26 = call i32 @u2_phy_w32(%struct.ralink_usb_phy* %24, i32 11184642, i32 %25)
  %27 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %28 = load i32, i32* @OFS_U2_PHY_DCR0, align 4
  %29 = call i32 @u2_phy_r32(%struct.ralink_usb_phy* %27, i32 %28)
  %30 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %31 = load i32, i32* @OFS_U2_PHY_DCR0, align 4
  %32 = call i32 @u2_phy_w32(%struct.ralink_usb_phy* %30, i32 1026, i32 %31)
  %33 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %34 = load i32, i32* @OFS_U2_PHY_DCR0, align 4
  %35 = call i32 @u2_phy_r32(%struct.ralink_usb_phy* %33, i32 %34)
  %36 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %37 = load i32, i32* @OFS_U2_PHY_AC0, align 4
  %38 = call i32 @u2_phy_w32(%struct.ralink_usb_phy* %36, i32 4720746, i32 %37)
  %39 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %40 = load i32, i32* @OFS_U2_PHY_AC1, align 4
  %41 = call i32 @u2_phy_w32(%struct.ralink_usb_phy* %39, i32 1140850716, i32 %40)
  %42 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %43 = load i32, i32* @OFS_U2_PHY_ACR3, align 4
  %44 = call i32 @u2_phy_w32(%struct.ralink_usb_phy* %42, i32 -1071644672, i32 %43)
  %45 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %2, align 8
  %46 = load i32, i32* @OFS_U2_PHY_DTM0, align 4
  %47 = call i32 @u2_phy_w32(%struct.ralink_usb_phy* %45, i32 33554432, i32 %46)
  ret void
}

declare dso_local i32 @u2_phy_r32(%struct.ralink_usb_phy*, i32) #1

declare dso_local i32 @u2_phy_w32(%struct.ralink_usb_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
