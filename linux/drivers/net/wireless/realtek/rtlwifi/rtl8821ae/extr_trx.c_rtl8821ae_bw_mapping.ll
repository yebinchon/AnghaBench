; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_bw_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_bw_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_tcb_desc = type { i64 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"rtl8821ae_bw_mapping, current_chan_bw %d, packet_bw %d\0A\00", align 1
@HT_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.rtl_tcb_desc*)* @rtl8821ae_bw_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8821ae_bw_mapping(%struct.ieee80211_hw* %0, %struct.rtl_tcb_desc* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_tcb_desc*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtl_tcb_desc* %1, %struct.rtl_tcb_desc** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  store %struct.rtl_phy* %11, %struct.rtl_phy** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = load i32, i32* @COMP_SEND, align 4
  %14 = load i32, i32* @DBG_TRACE, align 4
  %15 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %16 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %4, align 8
  %19 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %20)
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %23 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HT_CHANNEL_WIDTH_80, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %4, align 8
  %29 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HT_CHANNEL_WIDTH_80, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 2, i32* %7, align 4
  br label %43

34:                                               ; preds = %27
  %35 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %33
  br label %67

44:                                               ; preds = %2
  %45 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %46 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %4, align 8
  %58 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @HT_CHANNEL_WIDTH_80, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %50
  store i32 1, i32* %7, align 4
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %62
  br label %66

65:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %43
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
