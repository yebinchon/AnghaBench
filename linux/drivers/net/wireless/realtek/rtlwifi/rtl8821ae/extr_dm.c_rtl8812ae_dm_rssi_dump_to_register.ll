; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8812ae_dm_rssi_dump_to_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8812ae_dm_rssi_dump_to_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i64*, i32*, i32* }

@RA_RSSI_DUMP = common dso_local global i32 0, align 4
@RB_RSSI_DUMP = common dso_local global i32 0, align 4
@RS1_RX_EVM_DUMP = common dso_local global i32 0, align 4
@RS2_RX_EVM_DUMP = common dso_local global i32 0, align 4
@RA_RX_SNR_DUMP = common dso_local global i32 0, align 4
@RB_RX_SNR_DUMP = common dso_local global i32 0, align 4
@RA_CFO_SHORT_DUMP = common dso_local global i32 0, align 4
@RB_CFO_SHORT_DUMP = common dso_local global i32 0, align 4
@RA_CFO_LONG_DUMP = common dso_local global i32 0, align 4
@RB_CFO_LONG_DUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8812ae_dm_rssi_dump_to_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8812ae_dm_rssi_dump_to_register(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %4)
  store %struct.rtl_priv* %5, %struct.rtl_priv** %3, align 8
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %7 = load i32, i32* @RA_RSSI_DUMP, align 4
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rtl_write_byte(%struct.rtl_priv* %6, i32 %7, i32 %13)
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i32, i32* @RB_RSSI_DUMP, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rtl_write_byte(%struct.rtl_priv* %15, i32 %16, i32 %22)
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = load i32, i32* @RS1_RX_EVM_DUMP, align 4
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rtl_write_byte(%struct.rtl_priv* %24, i32 %25, i32 %31)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = load i32, i32* @RS2_RX_EVM_DUMP, align 4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rtl_write_byte(%struct.rtl_priv* %33, i32 %34, i32 %40)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = load i32, i32* @RA_RX_SNR_DUMP, align 4
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @rtl_write_byte(%struct.rtl_priv* %42, i32 %43, i32 %50)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %53 = load i32, i32* @RB_RX_SNR_DUMP, align 4
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @rtl_write_byte(%struct.rtl_priv* %52, i32 %53, i32 %60)
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = load i32, i32* @RA_CFO_SHORT_DUMP, align 4
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rtl_write_word(%struct.rtl_priv* %62, i32 %63, i32 %69)
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = load i32, i32* @RB_CFO_SHORT_DUMP, align 4
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rtl_write_word(%struct.rtl_priv* %71, i32 %72, i32 %78)
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i32, i32* @RA_CFO_LONG_DUMP, align 4
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rtl_write_word(%struct.rtl_priv* %80, i32 %81, i32 %87)
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %90 = load i32, i32* @RB_CFO_LONG_DUMP, align 4
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %92 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @rtl_write_word(%struct.rtl_priv* %89, i32 %90, i32 %96)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
