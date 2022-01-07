; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_get_wpa_cipher_suite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_get_wpa_cipher_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_CIPHER_SUITE_NONE = common dso_local global i64 0, align 8
@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WPA_CIPHER_WEP40 = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_CCMP = common dso_local global i64 0, align 8
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@WPA_CIPHER_WEP104 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @r8712_get_wpa_cipher_suite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8712_get_wpa_cipher_suite(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* @WPA_CIPHER_SUITE_NONE, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %8 = call i32 @memcmp(i32* %4, i8* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @WPA_CIPHER_NONE, align 4
  store i32 %11, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* @WPA_CIPHER_SUITE_WEP40, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %17 = call i32 @memcmp(i32* %13, i8* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %12
  %22 = load i32*, i32** %3, align 8
  %23 = load i64, i64* @WPA_CIPHER_SUITE_TKIP, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %26 = call i32 @memcmp(i32* %22, i8* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %21
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* @WPA_CIPHER_SUITE_CCMP, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %35 = call i32 @memcmp(i32* %31, i8* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %30
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* @WPA_CIPHER_SUITE_WEP104, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %44 = call i32 @memcmp(i32* %40, i8* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %46, %37, %28, %19, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
