; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_dig_get_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_dig_get_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dm_info = type { i64, i64 }

@DIG_PERF_FA_TH_EXTRA_HIGH = common dso_local global i32 0, align 4
@DIG_PERF_FA_TH_HIGH = common dso_local global i32 0, align 4
@DIG_PERF_FA_TH_LOW = common dso_local global i32 0, align 4
@DIG_CVRG_FA_TH_EXTRA_HIGH = common dso_local global i32 0, align 4
@DIG_CVRG_FA_TH_HIGH = common dso_local global i32 0, align 4
@DIG_CVRG_FA_TH_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dm_info*, i32*, i64*, i32)* @rtw_phy_dig_get_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_dig_get_threshold(%struct.rtw_dm_info* %0, i32* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dm_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.rtw_dm_info* %0, %struct.rtw_dm_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %5, align 8
  %15 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 4, i64* %18, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  store i64 3, i64* %20, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 2, i64* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %4
  %26 = load i32, i32* @DIG_PERF_FA_TH_EXTRA_HIGH, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DIG_PERF_FA_TH_HIGH, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @DIG_PERF_FA_TH_LOW, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 6, i64* %40, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 4, i64* %42, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  store i64 2, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %25
  br label %56

46:                                               ; preds = %4
  %47 = load i32, i32* @DIG_CVRG_FA_TH_EXTRA_HIGH, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @DIG_CVRG_FA_TH_HIGH, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @DIG_CVRG_FA_TH_LOW, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %46, %45
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
