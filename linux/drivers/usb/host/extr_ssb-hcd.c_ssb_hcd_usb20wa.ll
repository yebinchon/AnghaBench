; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ssb-hcd.c_ssb_hcd_usb20wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ssb-hcd.c_ssb_hcd_usb20wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SSB_DEV_USB20_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_device*)* @ssb_hcd_usb20wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_hcd_usb20wa(%struct.ssb_device* %0) #0 {
  %2 = alloca %struct.ssb_device*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %2, align 8
  %3 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %4 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SSB_DEV_USB20_HOST, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %11 = call i32 @ssb_write32(%struct.ssb_device* %10, i32 512, i32 2047)
  %12 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %13 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %14 = call i32 @ssb_read32(%struct.ssb_device* %13, i32 1024)
  %15 = and i32 %14, -9
  %16 = call i32 @ssb_write32(%struct.ssb_device* %12, i32 1024, i32 %15)
  %17 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %18 = call i32 @ssb_read32(%struct.ssb_device* %17, i32 1024)
  %19 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %20 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %21 = call i32 @ssb_read32(%struct.ssb_device* %20, i32 772)
  %22 = and i32 %21, -257
  %23 = call i32 @ssb_write32(%struct.ssb_device* %19, i32 772, i32 %22)
  %24 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %25 = call i32 @ssb_read32(%struct.ssb_device* %24, i32 772)
  %26 = call i32 @udelay(i32 1)
  %27 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %28 = call i32 @ssb_hcd_5354wa(%struct.ssb_device* %27)
  br label %29

29:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ssb_hcd_5354wa(%struct.ssb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
