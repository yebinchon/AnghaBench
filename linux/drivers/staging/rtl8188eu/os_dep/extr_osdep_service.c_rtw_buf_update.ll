; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_osdep_service.c_rtw_buf_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_osdep_service.c_rtw_buf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_buf_update(i32** %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64*, i64** %6, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %4
  br label %47

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %18
  br label %37

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = call i32* @rtw_malloc(i64 %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @memcpy(i32* %32, i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %30, %25
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32**, i32*** %5, align 8
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %10, align 8
  %40 = load i64*, i64** %6, align 8
  store i64 0, i64* %40, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32**, i32*** %5, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @kfree(i32* %45)
  br label %47

47:                                               ; preds = %37, %17
  ret void
}

declare dso_local i32* @rtw_malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
