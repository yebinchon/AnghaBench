; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_write_dynamic_cca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_write_dynamic_cca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.dynamic_primary_cca = type { i64 }
%struct.TYPE_2__ = type { %struct.dynamic_primary_cca }

@DM_REG_L1SBD_PD_CH_11N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64)* @rtl92ee_dm_write_dynamic_cca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_dm_write_dynamic_cca(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dynamic_primary_cca*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call %struct.TYPE_2__* @rtl_priv(%struct.ieee80211_hw* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.dynamic_primary_cca* %8, %struct.dynamic_primary_cca** %5, align 8
  %9 = load %struct.dynamic_primary_cca*, %struct.dynamic_primary_cca** %5, align 8
  %10 = getelementptr inbounds %struct.dynamic_primary_cca, %struct.dynamic_primary_cca* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = load i32, i32* @DM_REG_L1SBD_PD_CH_11N, align 4
  %17 = call i32 @BIT(i32 8)
  %18 = call i32 @BIT(i32 7)
  %19 = or i32 %17, %18
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %15, i32 %16, i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.dynamic_primary_cca*, %struct.dynamic_primary_cca** %5, align 8
  %25 = getelementptr inbounds %struct.dynamic_primary_cca, %struct.dynamic_primary_cca* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
