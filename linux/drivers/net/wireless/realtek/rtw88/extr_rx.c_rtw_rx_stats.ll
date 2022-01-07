; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rx.c_rtw_rx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rx.c_rtw_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.rtw_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@RTW_LPS_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_rx_stats(%struct.rtw_dev* %0, %struct.ieee80211_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.rtw_vif*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %12, %struct.ieee80211_hdr** %7, align 8
  %13 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ieee80211_is_data(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %81

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @is_broadcast_ether_addr(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %81, label %25

25:                                               ; preds = %19
  %26 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_multicast_ether_addr(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %81, label %31

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %36 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %34
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %43 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %48 = icmp ne %struct.ieee80211_vif* %47, null
  br i1 %48, label %49, label %80

49:                                               ; preds = %31
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.rtw_vif*
  store %struct.rtw_vif* %53, %struct.rtw_vif** %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %58 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %56
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %65 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %70 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RTW_LPS_THRESHOLD, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %49
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %77 = load %struct.rtw_vif*, %struct.rtw_vif** %8, align 8
  %78 = call i32 @rtw_leave_lps_irqsafe(%struct.rtw_dev* %76, %struct.rtw_vif* %77)
  br label %79

79:                                               ; preds = %75, %49
  br label %80

80:                                               ; preds = %79, %31
  br label %81

81:                                               ; preds = %18, %80, %25, %19
  ret void
}

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @rtw_leave_lps_irqsafe(%struct.rtw_dev*, %struct.rtw_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
