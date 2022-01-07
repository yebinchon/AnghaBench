; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_create_wlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_create_wlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.wlandevice*, i32, i32 }
%struct.hfa384x = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hfa384x*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dev_info = common dso_local global i32 0, align 4
@WLAN_MSD_HWPRESENT_PENDING = common dso_local global i32 0, align 4
@prism2sta_open = common dso_local global i32 0, align 4
@prism2sta_close = common dso_local global i32 0, align 4
@prism2sta_reset = common dso_local global i32 0, align 4
@prism2sta_txframe = common dso_local global i32 0, align 4
@prism2sta_mlmerequest = common dso_local global i32 0, align 4
@prism2sta_setmulticast = common dso_local global i32 0, align 4
@hfa384x_tx_timeout = common dso_local global i32 0, align 4
@P80211_NSDCAP_HWFRAGMENT = common dso_local global i32 0, align 4
@P80211_NSDCAP_AUTOJOIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlandevice* ()* @create_wlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlandevice* @create_wlan() #0 {
  %1 = alloca %struct.wlandevice*, align 8
  %2 = alloca %struct.wlandevice*, align 8
  %3 = alloca %struct.hfa384x*, align 8
  store %struct.wlandevice* null, %struct.wlandevice** %2, align 8
  store %struct.hfa384x* null, %struct.hfa384x** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.wlandevice* @kzalloc(i32 56, i32 %4)
  store %struct.wlandevice* %5, %struct.wlandevice** %2, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.wlandevice* @kzalloc(i32 56, i32 %6)
  %8 = bitcast %struct.wlandevice* %7 to %struct.hfa384x*
  store %struct.hfa384x* %8, %struct.hfa384x** %3, align 8
  %9 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %10 = icmp ne %struct.wlandevice* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %13 = icmp ne %struct.hfa384x* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11, %0
  %15 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %16 = call i32 @kfree(%struct.wlandevice* %15)
  %17 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %18 = bitcast %struct.hfa384x* %17 to %struct.wlandevice*
  %19 = call i32 @kfree(%struct.wlandevice* %18)
  store %struct.wlandevice* null, %struct.wlandevice** %1, align 8
  br label %60

20:                                               ; preds = %11
  %21 = load i32, i32* @dev_info, align 4
  %22 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %23 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @WLAN_MSD_HWPRESENT_PENDING, align 4
  %25 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %26 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %28 = bitcast %struct.hfa384x* %27 to %struct.wlandevice*
  %29 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %30 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %29, i32 0, i32 9
  store %struct.wlandevice* %28, %struct.wlandevice** %30, align 8
  %31 = load i32, i32* @prism2sta_open, align 4
  %32 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %33 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @prism2sta_close, align 4
  %35 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %36 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @prism2sta_reset, align 4
  %38 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %39 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @prism2sta_txframe, align 4
  %41 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %42 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @prism2sta_mlmerequest, align 4
  %44 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %45 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @prism2sta_setmulticast, align 4
  %47 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %48 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @hfa384x_tx_timeout, align 4
  %50 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %51 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @P80211_NSDCAP_HWFRAGMENT, align 4
  %53 = load i32, i32* @P80211_NSDCAP_AUTOJOIN, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %56 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %58 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  store %struct.wlandevice* %59, %struct.wlandevice** %1, align 8
  br label %60

60:                                               ; preds = %20, %14
  %61 = load %struct.wlandevice*, %struct.wlandevice** %1, align 8
  ret %struct.wlandevice* %61
}

declare dso_local %struct.wlandevice* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.wlandevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
