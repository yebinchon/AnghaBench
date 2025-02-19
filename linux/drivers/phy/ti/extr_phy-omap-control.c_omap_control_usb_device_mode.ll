; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-control.c_omap_control_usb_device_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-control.c_omap_control_usb_device_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_control_phy = type { i32 }

@OMAP_CTRL_DEV_SESSEND = common dso_local global i32 0, align 4
@OMAP_CTRL_DEV_IDDIG = common dso_local global i32 0, align 4
@OMAP_CTRL_DEV_AVALID = common dso_local global i32 0, align 4
@OMAP_CTRL_DEV_VBUSVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_control_phy*)* @omap_control_usb_device_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_control_usb_device_mode(%struct.omap_control_phy* %0) #0 {
  %2 = alloca %struct.omap_control_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.omap_control_phy* %0, %struct.omap_control_phy** %2, align 8
  %4 = load %struct.omap_control_phy*, %struct.omap_control_phy** %2, align 8
  %5 = getelementptr inbounds %struct.omap_control_phy, %struct.omap_control_phy* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @readl(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @OMAP_CTRL_DEV_SESSEND, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @OMAP_CTRL_DEV_IDDIG, align 4
  %13 = load i32, i32* @OMAP_CTRL_DEV_AVALID, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OMAP_CTRL_DEV_VBUSVALID, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.omap_control_phy*, %struct.omap_control_phy** %2, align 8
  %21 = getelementptr inbounds %struct.omap_control_phy, %struct.omap_control_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @writel(i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
