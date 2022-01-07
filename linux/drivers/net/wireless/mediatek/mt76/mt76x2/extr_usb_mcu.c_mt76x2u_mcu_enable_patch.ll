; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mcu.c_mt76x2u_mcu_enable_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mcu.c_mt76x2u_mcu_enable_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mt76_usb }
%struct.mt76_usb = type { i32 }

@mt76x2u_mcu_enable_patch.data = internal constant [11 x i32] [i32 111, i32 252, i32 8, i32 1, i32 32, i32 4, i32 0, i32 0, i32 0, i32 9, i32 0], align 16
@MT_VEND_DEV_MODE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x2u_mcu_enable_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2u_mcu_enable_patch(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.mt76_usb*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %4 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.mt76_usb* %6, %struct.mt76_usb** %3, align 8
  %7 = load %struct.mt76_usb*, %struct.mt76_usb** %3, align 8
  %8 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @memcpy(i32 %9, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @mt76x2u_mcu_enable_patch.data, i64 0, i64 0), i32 44)
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %11, i32 0, i32 0
  %13 = load i32, i32* @MT_VEND_DEV_MODE, align 4
  %14 = load i32, i32* @USB_DIR_OUT, align 4
  %15 = load i32, i32* @USB_TYPE_CLASS, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.mt76_usb*, %struct.mt76_usb** %3, align 8
  %18 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mt76u_vendor_request(%struct.TYPE_2__* %12, i32 %13, i32 %16, i32 18, i32 0, i32 %19, i32 44)
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mt76u_vendor_request(%struct.TYPE_2__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
