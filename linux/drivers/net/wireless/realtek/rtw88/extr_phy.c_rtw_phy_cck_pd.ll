; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_cck_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_cck_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_3__, %struct.rtw_chip_info*, %struct.rtw_dm_info }
%struct.TYPE_3__ = type { i64 }
%struct.rtw_chip_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rtw_dev*, i64)* }
%struct.rtw_dm_info = type { i32, i32 }

@RTW_BAND_2G = common dso_local global i64 0, align 8
@CCK_FA_AVG_RESET = common dso_local global i32 0, align 4
@CCK_PD_LV_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_phy_cck_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_cck_pd(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dm_info*, align 8
  %4 = alloca %struct.rtw_chip_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 2
  store %struct.rtw_dm_info* %8, %struct.rtw_dm_info** %3, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 1
  %11 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %10, align 8
  store %struct.rtw_chip_info* %11, %struct.rtw_chip_info** %4, align 8
  %12 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %13 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RTW_BAND_2G, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %24 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CCK_FA_AVG_RESET, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %31 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %42

32:                                               ; preds = %22
  %33 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %34 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 3
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %36, %37
  %39 = ashr i32 %38, 2
  %40 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %41 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %32, %28
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %44 = call i64 @rtw_phy_cck_pd_lv(%struct.rtw_dev* %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @CCK_PD_LV_MAX, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %65

49:                                               ; preds = %42
  %50 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %51 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.rtw_dev*, i64)*, i32 (%struct.rtw_dev*, i64)** %53, align 8
  %55 = icmp ne i32 (%struct.rtw_dev*, i64)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %58 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.rtw_dev*, i64)*, i32 (%struct.rtw_dev*, i64)** %60, align 8
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 %61(%struct.rtw_dev* %62, i64 %63)
  br label %65

65:                                               ; preds = %21, %48, %56, %49
  ret void
}

declare dso_local i64 @rtw_phy_cck_pd_lv(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
