; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_beacon_statistic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_beacon_statistic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rtl_priv = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@FCS_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_beacon_statistic(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %12, %struct.ieee80211_hdr** %6, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MAC80211_LINKED, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %66

28:                                               ; preds = %20
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_is_beacon(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ieee80211_is_probe_resp(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %66

41:                                               ; preds = %34, %28
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FCS_LEN, align 8
  %46 = add nsw i64 40, %45
  %47 = icmp sle i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %66

49:                                               ; preds = %41
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ether_addr_equal(i32 %52, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %66

60:                                               ; preds = %49
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %59, %48, %40, %27, %19
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
