; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_set_tx_power_index_by_rs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_set_tx_power_index_by_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_hal }
%struct.TYPE_2__ = type { i64 }
%struct.rtw_hal = type { i64, i64** }

@RTW_RATE_SECTION_MAX = common dso_local global i64 0, align 8
@rtw_rate_section = common dso_local global i64** null, align 8
@rtw_rate_size = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64, i64, i64)* @rtw_phy_set_tx_power_index_by_rs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_set_tx_power_index_by_rs(%struct.rtw_dev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtw_hal*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 1
  store %struct.rtw_hal* %18, %struct.rtw_hal** %9, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %20 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @RTW_RATE_SECTION_MAX, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %69

27:                                               ; preds = %4
  %28 = load i64**, i64*** @rtw_rate_section, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i64*, i64** %28, i64 %29
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** %11, align 8
  %32 = load i64*, i64** @rtw_rate_size, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load %struct.rtw_hal*, %struct.rtw_hal** %9, align 8
  %37 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %66, %27
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %12, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load i64*, i64** %11, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @rtw_phy_get_tx_power_index(%struct.rtw_dev* %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load %struct.rtw_hal*, %struct.rtw_hal** %9, align 8
  %59 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %58, i32 0, i32 1
  %60 = load i64**, i64*** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i64*, i64** %60, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %57, i64* %65, align 8
  br label %66

66:                                               ; preds = %44
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %39

69:                                               ; preds = %26, %39
  ret void
}

declare dso_local i64 @rtw_phy_get_tx_power_index(%struct.rtw_dev*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
