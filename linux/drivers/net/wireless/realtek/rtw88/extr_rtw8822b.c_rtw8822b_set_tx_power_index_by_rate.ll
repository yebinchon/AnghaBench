; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_tx_power_index_by_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_tx_power_index_by_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i64** }

@rtw8822b_set_tx_power_index_by_rate.offset_txagc = internal constant [2 x i32] [i32 7424, i32 7552], align 4
@rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx = internal global i32 0, align 4
@rtw_rate_size = common dso_local global i32* null, align 8
@rtw_rate_section = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64, i64)* @rtw8822b_set_tx_power_index_by_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_set_tx_power_index_by_rate(%struct.rtw_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtw_hal*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 0
  store %struct.rtw_hal* %14, %struct.rtw_hal** %7, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %66, %3
  %16 = load i32, i32* %12, align 4
  %17 = load i32*, i32** @rtw_rate_size, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %15
  %23 = load i64**, i64*** @rtw_rate_section, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i64*, i64** %23, i64 %24
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.rtw_hal*, %struct.rtw_hal** %7, align 8
  %32 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %31, i32 0, i32 0
  %33 = load i64**, i64*** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64*, i64** %33, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = and i64 %40, 3
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i64, i64* %11, align 8
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %43, %46
  %48 = load i32, i32* @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %52, label %65

52:                                               ; preds = %22
  %53 = load i64, i64* %8, align 8
  %54 = and i64 %53, 252
  store i64 %54, i64* %9, align 8
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* @rtw8822b_set_tx_power_index_by_rate.offset_txagc, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  %64 = call i32 @rtw_write32(%struct.rtw_dev* %55, i32 %62, i32 %63)
  store i32 0, i32* @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  br label %65

65:                                               ; preds = %52, %22
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %15

69:                                               ; preds = %15
  ret void
}

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
