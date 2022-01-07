; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.twl4030_usb = type { i32, i32, i32 }

@MUSB_UNKNOWN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @twl4030_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.twl4030_usb*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.twl4030_usb* @phy_get_drvdata(%struct.phy* %4)
  store %struct.twl4030_usb* %5, %struct.twl4030_usb** %3, align 8
  %6 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %7 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pm_runtime_get_sync(i32 %8)
  %10 = load i32, i32* @MUSB_UNKNOWN, align 4
  %11 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %12 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %14 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %13, i32 0, i32 1
  %15 = load i32, i32* @HZ, align 4
  %16 = call i32 @schedule_delayed_work(i32* %14, i32 %15)
  %17 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %18 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_mark_last_busy(i32 %19)
  %21 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %22 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_put_autosuspend(i32 %23)
  ret i32 0
}

declare dso_local %struct.twl4030_usb* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
