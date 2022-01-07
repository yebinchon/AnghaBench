; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_charger_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_charger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32, i32, i32 }

@UNKNOWN_TYPE = common dso_local global i32 0, align 4
@USB_CHARGER_DEFAULT = common dso_local global i32 0, align 4
@usb_phy_notify_charger_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_phy*)* @usb_charger_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_charger_init(%struct.usb_phy* %0) #0 {
  %2 = alloca %struct.usb_phy*, align 8
  store %struct.usb_phy* %0, %struct.usb_phy** %2, align 8
  %3 = load i32, i32* @UNKNOWN_TYPE, align 4
  %4 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %5 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @USB_CHARGER_DEFAULT, align 4
  %7 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %8 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %10 = call i32 @usb_phy_set_default_current(%struct.usb_phy* %9)
  %11 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %12 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %11, i32 0, i32 0
  %13 = load i32, i32* @usb_phy_notify_charger_work, align 4
  %14 = call i32 @INIT_WORK(i32* %12, i32 %13)
  ret void
}

declare dso_local i32 @usb_phy_set_default_current(%struct.usb_phy*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
