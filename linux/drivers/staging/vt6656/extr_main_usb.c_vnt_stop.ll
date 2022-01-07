; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32, i32, i32, i32, i64 }

@MAX_KEY_TABLE = common dso_local global i32 0, align 4
@DEVICE_FLAGS_UNPLUG = common dso_local global i32 0, align 4
@DEVICE_FLAGS_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @vnt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  store %struct.vnt_private* %7, %struct.vnt_private** %3, align 8
  %8 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %9 = icmp ne %struct.vnt_private* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %60

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %20, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MAX_KEY_TABLE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @vnt_mac_disable_keyentry(%struct.vnt_private* %17, i32 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %25 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @DEVICE_FLAGS_UNPLUG, align 4
  %27 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 3
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %33 = call i32 @vnt_mac_shutdown(%struct.vnt_private* %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %36 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %35)
  %37 = load i32, i32* @DEVICE_FLAGS_DISCONNECTED, align 4
  %38 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %39 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %38, i32 0, i32 3
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %42 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %41, i32 0, i32 2
  %43 = call i32 @cancel_delayed_work_sync(i32* %42)
  %44 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %45 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %47 = call i32 @vnt_free_tx_bufs(%struct.vnt_private* %46)
  %48 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %49 = call i32 @vnt_free_rx_bufs(%struct.vnt_private* %48)
  %50 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %51 = call i32 @vnt_free_int_bufs(%struct.vnt_private* %50)
  %52 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %53 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_kill_urb(i32 %54)
  %56 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %57 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_free_urb(i32 %58)
  br label %60

60:                                               ; preds = %34, %10
  ret void
}

declare dso_local i32 @vnt_mac_disable_keyentry(%struct.vnt_private*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @vnt_mac_shutdown(%struct.vnt_private*) #1

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @vnt_free_tx_bufs(%struct.vnt_private*) #1

declare dso_local i32 @vnt_free_rx_bufs(%struct.vnt_private*) #1

declare dso_local i32 @vnt_free_int_bufs(%struct.vnt_private*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
