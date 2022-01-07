; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_setmulticast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_setmulticast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { %struct.hfa384x* }
%struct.hfa384x = type { i64 }
%struct.net_device = type { i32 }

@HFA384x_STATE_RUNNING = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@P80211ENUM_truth_true = common dso_local global i32 0, align 4
@P80211ENUM_truth_false = common dso_local global i32 0, align 4
@HFA384x_RID_PROMISCMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlandevice*, %struct.net_device*)* @prism2sta_setmulticast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2sta_setmulticast(%struct.wlandevice* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %9 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %8, i32 0, i32 0
  %10 = load %struct.hfa384x*, %struct.hfa384x** %9, align 8
  store %struct.hfa384x* %10, %struct.hfa384x** %6, align 8
  %11 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %12 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HFA384x_STATE_RUNNING, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = load i32, i32* @IFF_ALLMULTI, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @P80211ENUM_truth_true, align 4
  store i32 %27, i32* %7, align 4
  br label %30

28:                                               ; preds = %17
  %29 = load i32, i32* @P80211ENUM_truth_false, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %32 = load i32, i32* @HFA384x_RID_PROMISCMODE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @hfa384x_drvr_setconfig16_async(%struct.hfa384x* %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @hfa384x_drvr_setconfig16_async(%struct.hfa384x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
