; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-dm816x-usb.c_dm816x_usb_phy_set_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-dm816x-usb.c_dm816x_usb_phy_set_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_otg = type { i32, %struct.usb_bus* }
%struct.usb_bus = type { i32 }

@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_otg*, %struct.usb_bus*)* @dm816x_usb_phy_set_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm816x_usb_phy_set_host(%struct.usb_otg* %0, %struct.usb_bus* %1) #0 {
  %3 = alloca %struct.usb_otg*, align 8
  %4 = alloca %struct.usb_bus*, align 8
  store %struct.usb_otg* %0, %struct.usb_otg** %3, align 8
  store %struct.usb_bus* %1, %struct.usb_bus** %4, align 8
  %5 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %6 = load %struct.usb_otg*, %struct.usb_otg** %3, align 8
  %7 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %6, i32 0, i32 1
  store %struct.usb_bus* %5, %struct.usb_bus** %7, align 8
  %8 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %9 = icmp ne %struct.usb_bus* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %12 = load %struct.usb_otg*, %struct.usb_otg** %3, align 8
  %13 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  br label %14

14:                                               ; preds = %10, %2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
