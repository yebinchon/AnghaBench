; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_stop_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_stop_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_stop_protocol(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %3 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %12 = call i32 @ieee80211_stop_send_beacons(%struct.ieee80211_device* %11)
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 2
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 1
  %18 = call i32 @cancel_delayed_work(i32* %17)
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %19, i32 0, i32 0
  %21 = call i32 @cancel_delayed_work(i32* %20)
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %23 = call i32 @ieee80211_stop_scan(%struct.ieee80211_device* %22)
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %25 = call i32 @ieee80211_disassociate(%struct.ieee80211_device* %24)
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %27 = call i32 @RemoveAllTS(%struct.ieee80211_device* %26)
  br label %28

28:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @ieee80211_stop_send_beacons(%struct.ieee80211_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ieee80211_stop_scan(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_disassociate(%struct.ieee80211_device*) #1

declare dso_local i32 @RemoveAllTS(%struct.ieee80211_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
