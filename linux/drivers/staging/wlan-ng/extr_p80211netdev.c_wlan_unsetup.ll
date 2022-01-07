; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_wlan_unsetup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_wlan_unsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32*, i32 }
%struct.wireless_dev = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlan_unsetup(%struct.wlandevice* %0) #0 {
  %2 = alloca %struct.wlandevice*, align 8
  %3 = alloca %struct.wireless_dev*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %2, align 8
  %4 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %5 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %4, i32 0, i32 1
  %6 = call i32 @tasklet_kill(i32* %5)
  %7 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %8 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %13 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call %struct.wireless_dev* @netdev_priv(i32* %14)
  store %struct.wireless_dev* %15, %struct.wireless_dev** %3, align 8
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @wlan_free_wiphy(i64 %23)
  br label %25

25:                                               ; preds = %20, %11
  %26 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %27 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @free_netdev(i32* %28)
  %30 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %31 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local %struct.wireless_dev* @netdev_priv(i32*) #1

declare dso_local i32 @wlan_free_wiphy(i64) #1

declare dso_local i32 @free_netdev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
