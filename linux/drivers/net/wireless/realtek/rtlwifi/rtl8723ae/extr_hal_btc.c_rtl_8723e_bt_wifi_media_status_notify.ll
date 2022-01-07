; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl_8723e_bt_wifi_media_status_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl_8723e_bt_wifi_media_status_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_phy = type { i32, i64 }

@RT_MEDIA_CONNECT = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[BTCoex], FW write 0x19=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_8723e_bt_wifi_media_status_notify(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 1
  store %struct.rtl_phy* %12, %struct.rtl_phy** %6, align 8
  %13 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %66

20:                                               ; preds = %2
  %21 = load i32, i32* @RT_MEDIA_CONNECT, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 1, i32* %25, align 4
  br label %28

26:                                               ; preds = %20
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = call i64 @mgnt_link_status_query(%struct.ieee80211_hw* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %40 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 48, i32* %45, align 4
  br label %48

46:                                               ; preds = %38
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 32, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %50 = load i32, i32* @COMP_BT_COEXIST, align 4
  %51 = load i32, i32* @DBG_DMESG, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %54, %57
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %58, %60
  %62 = call i32 @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %65 = call i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw* %63, i32 25, i32 3, i32* %64)
  br label %66

66:                                               ; preds = %48, %19
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mgnt_link_status_query(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
