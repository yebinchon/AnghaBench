; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32, %struct.rtw_sec_desc }
%struct.rtw_sec_desc = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32, i64, i64 }

@RTW_CAM_WEP40 = common dso_local global i64 0, align 8
@RTW_CAM_WEP104 = common dso_local global i64 0, align 8
@RTW_CAM_TKIP = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@RTW_CAM_AES = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_SW_MGMT_TX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @rtw_ops_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_ops_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.rtw_dev*, align 8
  %13 = alloca %struct.rtw_sec_desc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %18, align 8
  store %struct.rtw_dev* %19, %struct.rtw_dev** %12, align 8
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %12, align 8
  %21 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %20, i32 0, i32 1
  store %struct.rtw_sec_desc* %21, %struct.rtw_sec_desc** %13, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %23 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %46 [
    i32 128, label %25
    i32 129, label %27
    i32 130, label %29
    i32 131, label %36
    i32 135, label %43
    i32 134, label %43
    i32 133, label %43
    i32 132, label %43
  ]

25:                                               ; preds = %5
  %26 = load i64, i64* @RTW_CAM_WEP40, align 8
  store i64 %26, i64* %14, align 8
  br label %49

27:                                               ; preds = %5
  %28 = load i64, i64* @RTW_CAM_WEP104, align 8
  store i64 %28, i64* %14, align 8
  br label %49

29:                                               ; preds = %5
  %30 = load i64, i64* @RTW_CAM_TKIP, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %32 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %49

36:                                               ; preds = %5
  %37 = load i64, i64* @RTW_CAM_AES, align 8
  store i64 %37, i64* %14, align 8
  %38 = load i32, i32* @IEEE80211_KEY_FLAG_SW_MGMT_TX, align 4
  %39 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %40 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %49

43:                                               ; preds = %5, %5, %5, %5
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %106

46:                                               ; preds = %5
  %47 = load i32, i32* @ENOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %106

49:                                               ; preds = %36, %29, %27, %25
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %12, align 8
  %51 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %13, align 8
  %61 = call i64 @rtw_sec_get_free_cam(%struct.rtw_sec_desc* %60)
  store i64 %61, i64* %15, align 8
  br label %66

62:                                               ; preds = %49
  %63 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %64 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %15, align 8
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %13, align 8
  %69 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @ENOSPC, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %16, align 4
  br label %101

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %100 [
    i32 136, label %77
    i32 137, label %93
  ]

77:                                               ; preds = %75
  %78 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %79 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %80 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %85 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.rtw_dev*, %struct.rtw_dev** %12, align 8
  %87 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %13, align 8
  %88 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %89 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @rtw_sec_write_cam(%struct.rtw_dev* %86, %struct.rtw_sec_desc* %87, %struct.ieee80211_sta* %88, %struct.ieee80211_key_conf* %89, i64 %90, i64 %91)
  br label %100

93:                                               ; preds = %75
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %12, align 8
  %95 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %13, align 8
  %96 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %97 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @rtw_sec_clear_cam(%struct.rtw_dev* %94, %struct.rtw_sec_desc* %95, i64 %98)
  br label %100

100:                                              ; preds = %75, %93, %77
  br label %101

101:                                              ; preds = %100, %72
  %102 = load %struct.rtw_dev*, %struct.rtw_dev** %12, align 8
  %103 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %46, %43
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rtw_sec_get_free_cam(%struct.rtw_sec_desc*) #1

declare dso_local i32 @rtw_sec_write_cam(%struct.rtw_dev*, %struct.rtw_sec_desc*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*, i64, i64) #1

declare dso_local i32 @rtw_sec_clear_cam(%struct.rtw_dev*, %struct.rtw_sec_desc*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
