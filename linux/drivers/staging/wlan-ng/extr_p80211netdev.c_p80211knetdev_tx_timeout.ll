; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211knetdev_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211knetdev_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wlandevice* }
%struct.wlandevice = type { i32, i32, i32 (%struct.wlandevice*)* }

@.str = private unnamed_addr constant [29 x i8] c"Implement tx_timeout for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @p80211knetdev_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p80211knetdev_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.wlandevice*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  store %struct.wlandevice* %6, %struct.wlandevice** %3, align 8
  %7 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %8 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %7, i32 0, i32 2
  %9 = load i32 (%struct.wlandevice*)*, i32 (%struct.wlandevice*)** %8, align 8
  %10 = icmp ne i32 (%struct.wlandevice*)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %13 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %12, i32 0, i32 2
  %14 = load i32 (%struct.wlandevice*)*, i32 (%struct.wlandevice*)** %13, align 8
  %15 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %16 = call i32 %14(%struct.wlandevice* %15)
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %20 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_warn(%struct.net_device* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %24 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @netif_wake_queue(i32 %25)
  br label %27

27:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
