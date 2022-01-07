; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_cck_pd_lv_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_cck_pd_lv_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i64*, i64, i64 }

@CCK_PD_IGI_LV4_VAL = common dso_local global i64 0, align 8
@CCK_PD_RSSI_LV4_VAL = common dso_local global i64 0, align 8
@CCK_PD_IGI_LV3_VAL = common dso_local global i64 0, align 8
@CCK_PD_RSSI_LV3_VAL = common dso_local global i64 0, align 8
@CCK_PD_IGI_LV2_VAL = common dso_local global i64 0, align 8
@CCK_PD_RSSI_LV2_VAL = common dso_local global i64 0, align 8
@CCK_PD_FA_LV1_MIN = common dso_local global i64 0, align 8
@CCK_PD_FA_LV0_MAX = common dso_local global i64 0, align 8
@CCK_PD_LV_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rtw_dev*)* @rtw_phy_cck_pd_lv_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtw_phy_cck_pd_lv_link(%struct.rtw_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_dm_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_dm_info* %9, %struct.rtw_dm_info** %4, align 8
  %10 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %11 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %16 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %19 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @CCK_PD_IGI_LV4_VAL, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @CCK_PD_RSSI_LV4_VAL, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 4, i64* %2, align 8
  br label %59

29:                                               ; preds = %24, %1
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @CCK_PD_IGI_LV3_VAL, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @CCK_PD_RSSI_LV3_VAL, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i64 3, i64* %2, align 8
  br label %59

38:                                               ; preds = %33, %29
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @CCK_PD_IGI_LV2_VAL, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @CCK_PD_RSSI_LV2_VAL, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  store i64 2, i64* %2, align 8
  br label %59

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @CCK_PD_FA_LV1_MIN, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 1, i64* %2, align 8
  br label %59

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @CCK_PD_FA_LV0_MAX, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i64 0, i64* %2, align 8
  br label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @CCK_PD_LV_MAX, align 8
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %57, %56, %51, %46, %37, %28
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
