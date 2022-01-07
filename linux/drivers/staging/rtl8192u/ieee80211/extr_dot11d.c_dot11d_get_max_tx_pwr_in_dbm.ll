; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_dot11d.c_dot11d_get_max_tx_pwr_in_dbm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_dot11d.c_dot11d_get_max_tx_pwr_in_dbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.rt_dot11d_info = type { i64*, i64* }

@MAX_CHANNEL_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"dot11d_get_max_tx_pwr_in_dbm(): Invalid Channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dot11d_get_max_tx_pwr_in_dbm(%struct.ieee80211_device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rt_dot11d_info*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %9 = call %struct.rt_dot11d_info* @GET_DOT11D_INFO(%struct.ieee80211_device* %8)
  store %struct.rt_dot11d_info* %9, %struct.rt_dot11d_info** %6, align 8
  store i64 255, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @MAX_CHANNEL_NUMBER, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netdev_err(i32 %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %3, align 8
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %6, align 8
  %21 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %6, align 8
  %29 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %27, %19
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local %struct.rt_dot11d_info* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
