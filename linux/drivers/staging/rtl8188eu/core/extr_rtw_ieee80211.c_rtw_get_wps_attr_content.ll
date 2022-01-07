; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_get_wps_attr_content.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_get_wps_attr_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rtw_get_wps_attr_content(i32* %0, i64 %1, i32 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i64*, i64** %11, align 8
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32* @rtw_get_wps_attr(i32* %19, i64 %20, i32 %21, i32* null, i64* %13)
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %18
  %26 = load i64, i64* %13, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i64, i64* %13, align 8
  %36 = sub nsw i64 %35, 4
  %37 = call i32 @memcpy(i32* %32, i32* %34, i64 %36)
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i64*, i64** %11, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %13, align 8
  %43 = sub nsw i64 %42, 4
  %44 = load i64*, i64** %11, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %6, align 8
  br label %49

48:                                               ; preds = %25, %18
  store i32* null, i32** %6, align 8
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32*, i32** %6, align 8
  ret i32* %50
}

declare dso_local i32* @rtw_get_wps_attr(i32*, i64, i32, i32*, i64*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
