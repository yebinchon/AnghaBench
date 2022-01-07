; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_cck_pd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_cck_pd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i32, i64** }

@RTW_CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@RTW_RF_PATH_MAX = common dso_local global i64 0, align 8
@CCK_FA_AVG_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_phy_cck_pd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_cck_pd_init(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dm_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_dm_info* %7, %struct.rtw_dm_info** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @RTW_CHANNEL_WIDTH_40, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @RTW_RF_PATH_MAX, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %19 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %18, i32 0, i32 1
  %20 = load i64**, i64*** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i64*, i64** %20, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %13

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load i32, i32* @CCK_FA_AVG_RESET, align 4
  %35 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %36 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
