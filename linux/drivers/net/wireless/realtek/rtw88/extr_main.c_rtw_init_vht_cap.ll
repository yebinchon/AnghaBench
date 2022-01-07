; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_init_vht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_init_vht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse }
%struct.rtw_efuse = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ieee80211_sta_vht_cap = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@EFUSE_HW_CAP_IGNORE = common dso_local global i64 0, align 8
@EFUSE_HW_CAP_PTCL_VHT = common dso_local global i64 0, align 8
@IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXLDPC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_TXSTBC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXSTBC_1 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_HTC_VHT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_9 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.ieee80211_sta_vht_cap*)* @rtw_init_vht_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_init_vht_cap(%struct.rtw_dev* %0, %struct.ieee80211_sta_vht_cap* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.ieee80211_sta_vht_cap* %1, %struct.ieee80211_sta_vht_cap** %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_efuse* %9, %struct.rtw_efuse** %5, align 8
  %10 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %11 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EFUSE_HW_CAP_IGNORE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %18 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EFUSE_HW_CAP_PTCL_VHT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %98

24:                                               ; preds = %16, %2
  %25 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454, align 4
  %28 = load i32, i32* @IEEE80211_VHT_CAP_RXLDPC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IEEE80211_VHT_CAP_TXSTBC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @IEEE80211_VHT_CAP_RXSTBC_1, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IEEE80211_VHT_CAP_HTC_VHT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %43 = shl i32 %42, 0
  %44 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %45 = shl i32 %44, 4
  %46 = or i32 %43, %45
  %47 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %48 = shl i32 %47, 6
  %49 = or i32 %46, %48
  %50 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %54 = shl i32 %53, 10
  %55 = or i32 %52, %54
  %56 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %57 = shl i32 %56, 12
  %58 = or i32 %55, %57
  %59 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %60 = shl i32 %59, 14
  %61 = or i32 %58, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %63 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %24
  %68 = call i8* @cpu_to_le16(i32 780)
  store i8* %68, i8** %7, align 8
  %69 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %70 = shl i32 %69, 2
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %79

73:                                               ; preds = %24
  %74 = call i8* @cpu_to_le16(i32 390)
  store i8* %74, i8** %7, align 8
  %75 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %76 = shl i32 %75, 2
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %6, align 4
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i8* %81, i8** %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  br label %98

98:                                               ; preds = %79, %23
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
