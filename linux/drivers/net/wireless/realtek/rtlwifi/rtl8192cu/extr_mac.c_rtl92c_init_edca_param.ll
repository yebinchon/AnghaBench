; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_init_edca_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_init_edca_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_EDCA_VO_PARAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92c_init_edca_param(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %14, align 8
  %17 = load i64, i64* %12, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %13, align 4
  %19 = load i64, i64* %10, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 15
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %13, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %13, align 4
  %25 = load i64, i64* %11, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 15
  %28 = shl i32 %27, 12
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  %36 = load i64, i64* @REG_EDCA_VO_PARAM, align 8
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @rtl_write_dword(%struct.rtl_priv* %35, i64 %40, i32 %41)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
