; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_is_disable_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_is_disable_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_btc_is_disable_edca_turbo(%struct.rtl_priv* %0) #0 {
  %2 = alloca %struct.rtl_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 6202411, i64* %5, align 8
  store i64 6202411, i64* %6, align 8
  store i64 1284, i64* %8, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i64 @rtl_read_dword(%struct.rtl_priv* %9, i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %13 = call i64 @halbtc_is_wifi_uplink(%struct.rtl_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %7, align 8
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %15
  br label %29

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %7, align 8
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %22
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @rtl_write_dword(%struct.rtl_priv* %33, i64 %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %29
  ret i32 1
}

declare dso_local i64 @rtl_read_dword(%struct.rtl_priv*, i64) #1

declare dso_local i64 @halbtc_is_wifi_uplink(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
