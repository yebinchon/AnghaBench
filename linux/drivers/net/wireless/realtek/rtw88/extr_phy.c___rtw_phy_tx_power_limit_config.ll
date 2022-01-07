; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c___rtw_phy_tx_power_limit_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c___rtw_phy_tx_power_limit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_hal = type { i32****, i64**, i32****, i64** }

@RTW_MAX_CHANNEL_NUM_2G = common dso_local global i64 0, align 8
@RTW_MAX_CHANNEL_NUM_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_hal*, i64, i64, i64)* @__rtw_phy_tx_power_limit_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rtw_phy_tx_power_limit_config(%struct.rtw_hal* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rtw_hal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.rtw_hal* %0, %struct.rtw_hal** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %43, %4
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* @RTW_MAX_CHANNEL_NUM_2G, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %17 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %16, i32 0, i32 3
  %18 = load i64**, i64*** %17, align 8
  %19 = getelementptr inbounds i64*, i64** %18, i64 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %26 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %25, i32 0, i32 2
  %27 = load i32****, i32***** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32***, i32**** %27, i64 %28
  %30 = load i32***, i32**** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32**, i32*** %30, i64 %31
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %24
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  br label %43

43:                                               ; preds = %15
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %11

46:                                               ; preds = %11
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @RTW_MAX_CHANNEL_NUM_5G, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %53 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %52, i32 0, i32 1
  %54 = load i64**, i64*** %53, align 8
  %55 = getelementptr inbounds i64*, i64** %54, i64 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %62 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %61, i32 0, i32 0
  %63 = load i32****, i32***** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32***, i32**** %63, i64 %64
  %66 = load i32***, i32**** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i32**, i32*** %66, i64 %67
  %69 = load i32**, i32*** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i32*, i32** %69, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %60
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  br label %79

79:                                               ; preds = %51
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %47

82:                                               ; preds = %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
