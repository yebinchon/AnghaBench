; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_mii_mng_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_mii_mng_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_ns_usb3 = type { i64 }

@BCMA_CCB_MII_MNG_CTL = common dso_local global i64 0, align 8
@BCM_NS_USB3_MII_MNG_TIMEOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_ns_usb3*)* @bcm_ns_usb3_mii_mng_wait_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_ns_usb3_mii_mng_wait_idle(%struct.bcm_ns_usb3* %0) #0 {
  %2 = alloca %struct.bcm_ns_usb3*, align 8
  store %struct.bcm_ns_usb3* %0, %struct.bcm_ns_usb3** %2, align 8
  %3 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %2, align 8
  %4 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %2, align 8
  %5 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BCMA_CCB_MII_MNG_CTL, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i32, i32* @BCM_NS_USB3_MII_MNG_TIMEOUT_US, align 4
  %10 = call i32 @usecs_to_jiffies(i32 %9)
  %11 = call i32 @bcm_ns_usb3_wait_reg(%struct.bcm_ns_usb3* %3, i64 %8, i32 256, i32 0, i32 %10)
  ret i32 %11
}

declare dso_local i32 @bcm_ns_usb3_wait_reg(%struct.bcm_ns_usb3*, i64, i32, i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
