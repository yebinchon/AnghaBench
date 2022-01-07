; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32, i32 }
%struct.mt76_vif = type { i32, %struct.mt76_wcid }
%struct.mt76_wcid = type { i32, i32 }
%struct.mt76_sta = type { %struct.mt76_wcid }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @mt7601u_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.mt7601u_dev*, align 8
  %13 = alloca %struct.mt76_vif*, align 8
  %14 = alloca %struct.mt76_sta*, align 8
  %15 = alloca %struct.mt76_wcid*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %19, align 8
  store %struct.mt7601u_dev* %20, %struct.mt7601u_dev** %12, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.mt76_vif*
  store %struct.mt76_vif* %24, %struct.mt76_vif** %13, align 8
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %26 = icmp ne %struct.ieee80211_sta* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.mt76_sta*
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi %struct.mt76_sta* [ %31, %27 ], [ null, %32 ]
  store %struct.mt76_sta* %34, %struct.mt76_sta** %14, align 8
  %35 = load %struct.mt76_sta*, %struct.mt76_sta** %14, align 8
  %36 = icmp ne %struct.mt76_sta* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.mt76_sta*, %struct.mt76_sta** %14, align 8
  %39 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %38, i32 0, i32 0
  br label %43

40:                                               ; preds = %33
  %41 = load %struct.mt76_vif*, %struct.mt76_vif** %13, align 8
  %42 = getelementptr inbounds %struct.mt76_vif, %struct.mt76_vif* %41, i32 0, i32 1
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi %struct.mt76_wcid* [ %39, %37 ], [ %42, %40 ]
  store %struct.mt76_wcid* %44, %struct.mt76_wcid** %15, align 8
  %45 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %46 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %52 [
    i32 128, label %51
    i32 129, label %51
    i32 130, label %51
    i32 131, label %51
  ]

51:                                               ; preds = %43, %43, %43, %43
  br label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %118

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SET_KEY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %61 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %64 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %67 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %78

68:                                               ; preds = %55
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %71 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %76 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %68
  store %struct.ieee80211_key_conf* null, %struct.ieee80211_key_conf** %11, align 8
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.mt76_sta*, %struct.mt76_sta** %14, align 8
  %80 = icmp ne %struct.mt76_sta* %79, null
  br i1 %80, label %110, label %81

81:                                               ; preds = %78
  %82 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %83 = icmp ne %struct.ieee80211_key_conf* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %86 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84, %81
  %91 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %12, align 8
  %92 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %93 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %96 = call i32 @mt76_mac_wcid_set_key(%struct.mt7601u_dev* %91, i32 %94, %struct.ieee80211_key_conf* %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %6, align 4
  br label %118

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %12, align 8
  %104 = load %struct.mt76_vif*, %struct.mt76_vif** %13, align 8
  %105 = getelementptr inbounds %struct.mt76_vif, %struct.mt76_vif* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %109 = call i32 @mt76_mac_shared_key_setup(%struct.mt7601u_dev* %103, i32 %106, i32 %107, %struct.ieee80211_key_conf* %108)
  store i32 %109, i32* %6, align 4
  br label %118

110:                                              ; preds = %78
  %111 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %12, align 8
  %112 = load %struct.mt76_sta*, %struct.mt76_sta** %14, align 8
  %113 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %117 = call i32 @mt76_mac_wcid_set_key(%struct.mt7601u_dev* %111, i32 %115, %struct.ieee80211_key_conf* %116)
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %110, %102, %99, %52
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @mt76_mac_wcid_set_key(%struct.mt7601u_dev*, i32, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @mt76_mac_shared_key_setup(%struct.mt7601u_dev*, i32, i32, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
