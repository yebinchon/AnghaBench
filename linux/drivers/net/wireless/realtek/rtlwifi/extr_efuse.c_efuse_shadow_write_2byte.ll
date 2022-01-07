; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_write_2byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_write_2byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i64** }

@EFUSE_MODIFY_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64)* @efuse_shadow_write_2byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efuse_shadow_write_2byte(%struct.ieee80211_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl_efuse*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call i32 @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_efuse* @rtl_efuse(i32 %9)
  store %struct.rtl_efuse* %10, %struct.rtl_efuse** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = and i64 %11, 255
  %13 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %14 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %13, i32 0, i32 0
  %15 = load i64**, i64*** %14, align 8
  %16 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %17 = getelementptr inbounds i64*, i64** %15, i64 %16
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %12, i64* %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = lshr i64 %21, 8
  %23 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %24 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %23, i32 0, i32 0
  %25 = load i64**, i64*** %24, align 8
  %26 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %27 = getelementptr inbounds i64*, i64** %25, i64 %26
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %22, i64* %31, align 8
  ret void
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
