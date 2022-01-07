; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun9i-usb.c_sun9i_usb_phy_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun9i-usb.c_sun9i_usb_phy_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.sun9i_usb_phy = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @sun9i_usb_phy_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun9i_usb_phy_exit(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.sun9i_usb_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.sun9i_usb_phy* @phy_get_drvdata(%struct.phy* %4)
  store %struct.sun9i_usb_phy* %5, %struct.sun9i_usb_phy** %3, align 8
  %6 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %3, align 8
  %7 = call i32 @sun9i_usb_phy_passby(%struct.sun9i_usb_phy* %6, i32 0)
  %8 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %3, align 8
  %9 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @reset_control_assert(i32 %10)
  %12 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %3, align 8
  %13 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_disable_unprepare(i32 %14)
  %16 = load %struct.sun9i_usb_phy*, %struct.sun9i_usb_phy** %3, align 8
  %17 = getelementptr inbounds %struct.sun9i_usb_phy, %struct.sun9i_usb_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  ret i32 0
}

declare dso_local %struct.sun9i_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @sun9i_usb_phy_passby(%struct.sun9i_usb_phy*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
