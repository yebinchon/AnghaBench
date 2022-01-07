; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_vif_watch_dog_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_vif_watch_dog_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.rtw_watch_dog_iter_data = type { i32, %struct.rtw_vif*, i32 }
%struct.rtw_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@RTW_LPS_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @rtw_vif_watch_dog_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_vif_watch_dog_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.rtw_watch_dog_iter_data*, align 8
  %8 = alloca %struct.rtw_vif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rtw_watch_dog_iter_data*
  store %struct.rtw_watch_dog_iter_data* %10, %struct.rtw_watch_dog_iter_data** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rtw_vif*
  store %struct.rtw_vif* %14, %struct.rtw_vif** %8, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.rtw_watch_dog_iter_data*, %struct.rtw_watch_dog_iter_data** %7, align 8
  %28 = getelementptr inbounds %struct.rtw_watch_dog_iter_data, %struct.rtw_watch_dog_iter_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %32 = load %struct.rtw_watch_dog_iter_data*, %struct.rtw_watch_dog_iter_data** %7, align 8
  %33 = getelementptr inbounds %struct.rtw_watch_dog_iter_data, %struct.rtw_watch_dog_iter_data* %32, i32 0, i32 1
  store %struct.rtw_vif* %31, %struct.rtw_vif** %33, align 8
  br label %34

34:                                               ; preds = %26, %20
  %35 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %36 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RTW_LPS_THRESHOLD, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %43 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RTW_LPS_THRESHOLD, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41, %34
  %49 = load %struct.rtw_watch_dog_iter_data*, %struct.rtw_watch_dog_iter_data** %7, align 8
  %50 = getelementptr inbounds %struct.rtw_watch_dog_iter_data, %struct.rtw_watch_dog_iter_data* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %41
  br label %55

52:                                               ; preds = %3
  %53 = load %struct.rtw_watch_dog_iter_data*, %struct.rtw_watch_dog_iter_data** %7, align 8
  %54 = getelementptr inbounds %struct.rtw_watch_dog_iter_data, %struct.rtw_watch_dog_iter_data* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %51
  %56 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %57 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %60 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %63 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %66 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
