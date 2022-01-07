; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_ie_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_ie_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @rtw_get_ie_ex(i64* %0, i64 %1, i64 %2, i64* %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  store i64* %0, i64** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* null, i64** %17, align 8
  %18 = load i64*, i64** %15, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i64*, i64** %15, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %20, %7
  %23 = load i64*, i64** %9, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %10, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %22
  %29 = load i64*, i64** %17, align 8
  store i64* %29, i64** %8, align 8
  br label %96

30:                                               ; preds = %25
  store i64 0, i64* %16, align 8
  br label %31

31:                                               ; preds = %93, %30
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %94

35:                                               ; preds = %31
  %36 = load i64, i64* %11, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %16, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %35
  %43 = load i64*, i64** %12, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %16, align 8
  %48 = add nsw i64 %47, 2
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64*, i64** %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @memcmp(i64* %49, i64* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %45, %42
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %16, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64* %57, i64** %17, align 8
  %58 = load i64*, i64** %14, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i64*, i64** %14, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %16, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %16, align 8
  %67 = add nsw i64 %66, 1
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 2
  %71 = call i32 @memcpy(i64* %61, i64* %64, i64 %70)
  br label %72

72:                                               ; preds = %60, %54
  %73 = load i64*, i64** %15, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i64*, i64** %9, align 8
  %77 = load i64, i64* %16, align 8
  %78 = add nsw i64 %77, 1
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 2
  %82 = load i64*, i64** %15, align 8
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %75, %72
  br label %94

84:                                               ; preds = %45, %35
  %85 = load i64*, i64** %9, align 8
  %86 = load i64, i64* %16, align 8
  %87 = add nsw i64 %86, 1
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 2
  %91 = load i64, i64* %16, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %16, align 8
  br label %93

93:                                               ; preds = %84
  br label %31

94:                                               ; preds = %83, %31
  %95 = load i64*, i64** %17, align 8
  store i64* %95, i64** %8, align 8
  br label %96

96:                                               ; preds = %94, %28
  %97 = load i64*, i64** %8, align 8
  ret i64* %97
}

declare dso_local i32 @memcmp(i64*, i64*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
