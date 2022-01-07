; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mgmt.c_rsi_set_default_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mgmt.c_rsi_set_default_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64, i64, i64 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@BW_20MHZ = common dso_local global i32 0, align 4
@IEEE80211_MAX_RTS_THRESHOLD = common dso_local global i32 0, align 4
@FSM_CARD_NOT_READY = common dso_local global i32 0, align 4
@EP_2GHZ_20MHZ = common dso_local global i32 0, align 4
@RSI_BEACON_INTERVAL = common dso_local global i32 0, align 4
@RSI_DTIM_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsi_common*)* @rsi_set_default_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_set_default_parameters(%struct.rsi_common* %0) #0 {
  %2 = alloca %struct.rsi_common*, align 8
  store %struct.rsi_common* %0, %struct.rsi_common** %2, align 8
  %3 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %4 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %5 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %4, i32 0, i32 16
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @BW_20MHZ, align 4
  %7 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %8 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %7, i32 0, i32 15
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @IEEE80211_MAX_RTS_THRESHOLD, align 4
  %10 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %11 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %10, i32 0, i32 14
  store i32 %9, i32* %11, align 8
  %12 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %13 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %15 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %14, i32 0, i32 1
  store i32 65535, i32* %15, align 4
  %16 = load i32, i32* @FSM_CARD_NOT_READY, align 4
  %17 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %18 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %17, i32 0, i32 13
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %20 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %19, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @EP_2GHZ_20MHZ, align 4
  %22 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %23 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 8
  %24 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %25 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %24, i32 0, i32 3
  store i32 1, i32* %25, align 4
  %26 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %27 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %26, i32 0, i32 11
  store i64 0, i64* %27, align 8
  %28 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %29 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %28, i32 0, i32 4
  store i32 2, i32* %29, align 8
  %30 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %31 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %30, i32 0, i32 10
  store i64 0, i64* %31, align 8
  %32 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %33 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %32, i32 0, i32 9
  store i64 0, i64* %33, align 8
  %34 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %35 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %34, i32 0, i32 5
  store i32 2, i32* %35, align 4
  %36 = load i32, i32* @RSI_BEACON_INTERVAL, align 4
  %37 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %38 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @RSI_DTIM_COUNT, align 4
  %40 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %41 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %43 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %46 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %49 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 7
  store i64 0, i64* %50, align 8
  %51 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %52 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %55 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  %57 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %58 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %61 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %64 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
