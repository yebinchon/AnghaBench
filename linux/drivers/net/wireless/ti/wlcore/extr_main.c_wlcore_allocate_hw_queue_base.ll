; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_allocate_hw_queue_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_allocate_hw_queue_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64*, i32 }
%struct.wl12xx_vif = type { i32, i64 }
%struct.ieee80211_vif = type { i64, i32, i32* }
%struct.wlcore_hw_queue_iter_data = type { i32, i64, %struct.ieee80211_vif* }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i8* null, align 8
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@wlcore_hw_queue_iter = common dso_local global i32 0, align 4
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"using pre-allocated hw queue base %d\00", align 1
@WLCORE_NUM_MAC_ADDRESSES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"allocating hw queue base: %d\00", align 1
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wlcore_allocate_hw_queue_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_allocate_hw_queue_base(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.wlcore_hw_queue_iter_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %11 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %10)
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %6, align 8
  %12 = bitcast %struct.wlcore_hw_queue_iter_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** @IEEE80211_INVAL_HW_QUEUE, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %3, align 4
  br label %124

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %7, i32 0, i32 2
  store %struct.ieee80211_vif* %24, %struct.ieee80211_vif** %25, align 8
  %26 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %30 = load i32, i32* @wlcore_hw_queue_iter, align 4
  %31 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %28, i32 %29, i32 %30, %struct.wlcore_hw_queue_iter_data* %7)
  %32 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %23
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %42 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @DEBUG_MAC80211, align 4
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wl1271_debug(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %100

48:                                               ; preds = %23
  %49 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @WLCORE_NUM_MAC_ADDRESSES, align 4
  %52 = call i32 @find_first_zero_bit(i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @WLCORE_NUM_MAC_ADDRESSES, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %124

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @NUM_TX_QUEUES, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %64 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @DEBUG_MAC80211, align 4
  %66 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %67 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wl1271_debug(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %96, %59
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @NUM_TX_QUEUES, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %76 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %79 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %77, i64 %83
  store i64 0, i64* %84, align 8
  %85 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %86 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %74
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %70

99:                                               ; preds = %70
  br label %100

100:                                              ; preds = %99, %35
  %101 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %102 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load i32, i32* @NUM_TX_QUEUES, align 4
  %108 = load i32, i32* @WLCORE_NUM_MAC_ADDRESSES, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %111 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NUM_TX_QUEUES, align 4
  %114 = sdiv i32 %112, %113
  %115 = add nsw i32 %109, %114
  %116 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %117 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  br label %123

118:                                              ; preds = %100
  %119 = load i8*, i8** @IEEE80211_INVAL_HW_QUEUE, align 8
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %122 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %118, %106
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %56, %18
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.wlcore_hw_queue_iter_data*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
