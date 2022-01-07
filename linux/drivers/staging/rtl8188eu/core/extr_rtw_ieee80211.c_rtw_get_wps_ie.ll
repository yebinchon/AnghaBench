; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_get_wps_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_get_wps_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rtw_get_wps_ie.wps_oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 4], align 16
@_WPA_IE_ID_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rtw_get_wps_ie(i32* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i32]* @__const.rtw_get_wps_ie.wps_oui to i8*), i64 16, i1 false)
  %15 = load i64*, i64** %9, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64*, i64** %9, align 8
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19
  %26 = load i32*, i32** %11, align 8
  store i32* %26, i32** %5, align 8
  br label %101

27:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %98, %27
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %99

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @_WPA_IE_ID_, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %88

40:                                               ; preds = %32
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add nsw i64 %42, 2
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %46 = call i32 @memcmp(i32* %44, i32* %45, i32 4)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %88, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 2
  %65 = call i32 @memcpy(i32* %55, i32* %58, i32 %64)
  br label %66

66:                                               ; preds = %54, %48
  %67 = load i64*, i64** %9, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32*, i32** %6, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %71, 1
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %9, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %69, %66
  %79 = load i32*, i32** %6, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add nsw i64 %80, 1
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %10, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %10, align 8
  br label %99

88:                                               ; preds = %40, %32
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %90, 1
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %10, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %88
  br label %28

99:                                               ; preds = %78, %28
  %100 = load i32*, i32** %11, align 8
  store i32* %100, i32** %5, align 8
  br label %101

101:                                              ; preds = %99, %25
  %102 = load i32*, i32** %5, align 8
  ret i32* %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
