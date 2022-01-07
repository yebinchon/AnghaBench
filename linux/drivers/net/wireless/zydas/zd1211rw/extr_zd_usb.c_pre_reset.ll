; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i64 }
%struct.ieee80211_hw = type { i32 }
%struct.zd_mac = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.zd_usb }
%struct.zd_usb = type { i32 }

@USB_INTERFACE_BOUND = common dso_local global i64 0, align 8
@ZD_DEVICE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.zd_mac*, align 8
  %6 = alloca %struct.zd_usb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = icmp ne %struct.ieee80211_hw* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_INTERFACE_BOUND, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %36

18:                                               ; preds = %11
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %19)
  store %struct.zd_mac* %20, %struct.zd_mac** %5, align 8
  %21 = load %struct.zd_mac*, %struct.zd_mac** %5, align 8
  %22 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.zd_usb* %23, %struct.zd_usb** %6, align 8
  %24 = load i32, i32* @ZD_DEVICE_RUNNING, align 4
  %25 = load %struct.zd_mac*, %struct.zd_mac** %5, align 8
  %26 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %25, i32 0, i32 1
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %29 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %31 = call i32 @zd_usb_stop(%struct.zd_usb* %30)
  %32 = load %struct.zd_mac*, %struct.zd_mac** %5, align 8
  %33 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %18, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @zd_usb_stop(%struct.zd_usb*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
