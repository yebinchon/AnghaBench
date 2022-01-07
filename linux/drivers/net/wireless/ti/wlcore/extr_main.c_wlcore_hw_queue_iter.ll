; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_hw_queue_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_hw_queue_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, i32* }
%struct.wlcore_hw_queue_iter_data = type { i32, i32, %struct.ieee80211_vif* }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i32 0, align 4
@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @wlcore_hw_queue_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_hw_queue_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.wlcore_hw_queue_iter_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wlcore_hw_queue_iter_data*
  store %struct.wlcore_hw_queue_iter_data* %9, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_INVAL_HW_QUEUE, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15, %3
  br label %53

27:                                               ; preds = %15
  %28 = load %struct.wlcore_hw_queue_iter_data*, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %29 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %34 = load %struct.wlcore_hw_queue_iter_data*, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %35 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %34, i32 0, i32 2
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %35, align 8
  %37 = icmp eq %struct.ieee80211_vif* %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %27
  %39 = load %struct.wlcore_hw_queue_iter_data*, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %40 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %53

41:                                               ; preds = %32
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NUM_TX_QUEUES, align 4
  %48 = sdiv i32 %46, %47
  %49 = load %struct.wlcore_hw_queue_iter_data*, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %50 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__set_bit(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %41, %38, %26
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
