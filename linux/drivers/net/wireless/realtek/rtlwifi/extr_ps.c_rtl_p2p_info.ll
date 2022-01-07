; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_p2p_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_p2p_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_mac = type { i64, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@FCS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_p2p_info(%struct.ieee80211_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %7, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %13)
  store %struct.rtl_mac* %14, %struct.rtl_mac** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %9, align 8
  %17 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %18 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %85

22:                                               ; preds = %3
  %23 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %24 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAC80211_LINKED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %85

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FCS_LEN, align 4
  %32 = add nsw i32 40, %31
  %33 = icmp ule i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %85

35:                                               ; preds = %29
  %36 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ether_addr_equal_64bits(i32 %38, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %85

46:                                               ; preds = %35
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ieee80211_is_beacon(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %46
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ieee80211_is_probe_resp(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ieee80211_is_action(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %85

65:                                               ; preds = %58, %52, %46
  %66 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ieee80211_is_action(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @FCS_LEN, align 4
  %76 = sub i32 %74, %75
  %77 = call i32 @rtl_p2p_action_ie(%struct.ieee80211_hw* %72, i8* %73, i32 %76)
  br label %85

78:                                               ; preds = %65
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @FCS_LEN, align 4
  %83 = sub i32 %81, %82
  %84 = call i32 @rtl_p2p_noa_ie(%struct.ieee80211_hw* %79, i8* %80, i32 %83)
  br label %85

85:                                               ; preds = %21, %28, %34, %45, %64, %78, %71
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @ether_addr_equal_64bits(i32, i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i32 @rtl_p2p_action_ie(%struct.ieee80211_hw*, i8*, i32) #1

declare dso_local i32 @rtl_p2p_noa_ie(%struct.ieee80211_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
