; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_wps_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_wps_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rtw_get_wps_attr.wps_oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 4], align 16
@_VENDOR_SPECIFIC_IE_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rtw_get_wps_attr(i32* %0, i32 %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %18 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([4 x i32]* @__const.rtw_get_wps_attr.wps_oui to i8*), i64 16, i1 false)
  %19 = load i64*, i64** %11, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64*, i64** %11, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %5
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @_VENDOR_SPECIFIC_IE_, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %33 = call i64 @memcmp(i32* %31, i32* %32, i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23
  %36 = load i32*, i32** %12, align 8
  store i32* %36, i32** %6, align 8
  br label %84

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  store i32* %39, i32** %12, align 8
  br label %40

40:                                               ; preds = %81, %37
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %40
  %51 = load i32*, i32** %12, align 8
  %52 = call i64 @RTW_GET_BE16(i32* %51)
  store i64 %52, i64* %15, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = call i64 @RTW_GET_BE16(i32* %54)
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %16, align 8
  %57 = add nsw i64 %56, 4
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %50
  %62 = load i32*, i32** %12, align 8
  store i32* %62, i32** %13, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i64, i64* %17, align 8
  %69 = call i32 @memcpy(i32* %66, i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i64*, i64** %11, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %17, align 8
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  br label %82

77:                                               ; preds = %50
  %78 = load i64, i64* %17, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %12, align 8
  br label %81

81:                                               ; preds = %77
  br label %40

82:                                               ; preds = %76, %40
  %83 = load i32*, i32** %13, align 8
  store i32* %83, i32** %6, align 8
  br label %84

84:                                               ; preds = %82, %35
  %85 = load i32*, i32** %6, align 8
  ret i32* %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i64 @RTW_GET_BE16(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
