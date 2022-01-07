; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_wpa_cipher_suite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_wpa_cipher_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_CIPHER_SUITE_NONE = common dso_local global i32 0, align 4
@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_WEP40 = common dso_local global i32 0, align 4
@WPA_CIPHER_WEP40 = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_WEP104 = common dso_local global i32 0, align 4
@WPA_CIPHER_WEP104 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_get_wpa_cipher_suite(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* @WPA_CIPHER_SUITE_NONE, align 4
  %6 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %7 = call i32 @memcmp(i32* %4, i32 %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @WPA_CIPHER_NONE, align 4
  store i32 %10, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @WPA_CIPHER_SUITE_WEP40, align 4
  %14 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %15 = call i32 @memcmp(i32* %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %11
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @WPA_CIPHER_SUITE_TKIP, align 4
  %22 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %23 = call i32 @memcmp(i32* %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %19
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @WPA_CIPHER_SUITE_CCMP, align 4
  %30 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %31 = call i32 @memcmp(i32* %28, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @WPA_CIPHER_SUITE_WEP104, align 4
  %38 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %39 = call i32 @memcmp(i32* %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41, %33, %25, %17, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
