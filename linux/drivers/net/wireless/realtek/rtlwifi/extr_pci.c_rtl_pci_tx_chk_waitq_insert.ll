; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_tx_chk_waitq_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_tx_chk_waitq_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.sk_buff = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.rtl_sta_info = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@RTL_AGG_OPERATIONAL = common dso_local global i64 0, align 8
@VO_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.sk_buff*)* @rtl_pci_tx_chk_waitq_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_pci_tx_chk_waitq_insert(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.rtl_sta_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %8, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call i64 @rtl_get_tid(%struct.sk_buff* %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call i32 @rtl_get_fc(%struct.sk_buff* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %19 = icmp ne %struct.ieee80211_sta* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %97

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %25, %struct.rtl_sta_info** %9, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %97

32:                                               ; preds = %21
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @ieee80211_is_nullfunc(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %97

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @ieee80211_is_qos_nullfunc(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %97

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @ieee80211_is_pspoll(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %97

47:                                               ; preds = %42
  %48 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %9, align 8
  %49 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RTL_AGG_OPERATIONAL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %97

59:                                               ; preds = %47
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i64 @_rtl_mac_to_hwqueue(%struct.ieee80211_hw* %60, %struct.sk_buff* %61)
  %63 = load i64, i64* @VO_QUEUE, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %97

66:                                               ; preds = %59
  %67 = load i64, i64* %10, align 8
  %68 = icmp ugt i64 %67, 7
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %97

70:                                               ; preds = %66
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %97

80:                                               ; preds = %70
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %82 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = call i32 @spin_lock_bh(i32* %83)
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i32 @skb_queue_tail(i32* %90, %struct.sk_buff* %91)
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %94 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_bh(i32* %95)
  store i32 1, i32* %4, align 4
  br label %97

97:                                               ; preds = %80, %79, %69, %65, %58, %46, %41, %36, %31, %20
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl_get_tid(%struct.sk_buff*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_pspoll(i32) #1

declare dso_local i64 @_rtl_mac_to_hwqueue(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
