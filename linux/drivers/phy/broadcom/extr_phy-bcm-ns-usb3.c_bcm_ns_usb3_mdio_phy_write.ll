; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_mdio_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_mdio_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_ns_usb3 = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_ns_usb3*, i32, i32)* @bcm_ns_usb3_mdio_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_ns_usb3_mdio_phy_write(%struct.bcm_ns_usb3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_ns_usb3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm_ns_usb3* %0, %struct.bcm_ns_usb3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.bcm_ns_usb3*, i32, i32)**
  %10 = load i32 (%struct.bcm_ns_usb3*, i32, i32)*, i32 (%struct.bcm_ns_usb3*, i32, i32)** %9, align 8
  %11 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 %10(%struct.bcm_ns_usb3* %11, i32 %12, i32 %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
