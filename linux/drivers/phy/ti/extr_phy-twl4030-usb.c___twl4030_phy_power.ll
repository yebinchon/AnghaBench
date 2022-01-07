; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c___twl4030_phy_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c___twl4030_phy_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_usb = type { i32 }

@PHY_PWR_CTRL = common dso_local global i32 0, align 4
@PHY_PWR_PHYPWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl4030_usb*, i32)* @__twl4030_phy_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__twl4030_phy_power(%struct.twl4030_usb* %0, i32 %1) #0 {
  %3 = alloca %struct.twl4030_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.twl4030_usb* %0, %struct.twl4030_usb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %7 = load i32, i32* @PHY_PWR_CTRL, align 4
  %8 = call i32 @twl4030_usb_read(%struct.twl4030_usb* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @PHY_PWR_PHYPWD, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @PHY_PWR_PHYPWD, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %22 = load i32, i32* @PHY_PWR_CTRL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @twl4030_usb_write_verify(%struct.twl4030_usb* %21, i32 %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  ret void
}

declare dso_local i32 @twl4030_usb_read(%struct.twl4030_usb*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @twl4030_usb_write_verify(%struct.twl4030_usb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
