; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ssb-hcd.c_ssb_hcd_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ssb-hcd.c_ssb_hcd_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SSB_DEV_USB11_HOSTDEV = common dso_local global i64 0, align 8
@SSB_HCD_TMSLOW_HOSTMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*)* @ssb_hcd_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_hcd_init_chip(%struct.ssb_device* %0) #0 {
  %2 = alloca %struct.ssb_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %5 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SSB_DEV_USB11_HOSTDEV, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @SSB_HCD_TMSLOW_HOSTMODE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ssb_device_enable(%struct.ssb_device* %15, i32 %16)
  %18 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %19 = call i32 @ssb_hcd_usb20wa(%struct.ssb_device* %18)
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @ssb_device_enable(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_hcd_usb20wa(%struct.ssb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
