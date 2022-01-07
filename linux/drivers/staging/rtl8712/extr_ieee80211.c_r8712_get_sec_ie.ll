; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_get_sec_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_get_sec_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.r8712_get_sec_ie.wpa_oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 1], align 16
@_TIMESTAMP_ = common dso_local global i64 0, align 8
@_BEACON_ITERVAL_ = common dso_local global i64 0, align 8
@_CAPABILITY_ = common dso_local global i64 0, align 8
@_WPA_IE_ID_ = common dso_local global i32 0, align 4
@_WPA2_IE_ID_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_get_sec_ie(i32* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([4 x i32]* @__const.r8712_get_sec_ie.wpa_oui to i8*), i64 16, i1 false)
  %17 = load i64, i64* @_TIMESTAMP_, align 8
  %18 = load i64, i64* @_BEACON_ITERVAL_, align 8
  %19 = add i64 %17, %18
  %20 = load i64, i64* @_CAPABILITY_, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %15, align 8
  br label %22

22:                                               ; preds = %113, %6
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load i64, i64* %15, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @_WPA_IE_ID_, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %26
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %15, align 8
  %37 = add i64 %36, 2
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %40 = call i32 @memcmp(i32* %38, i32* %39, i32 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %70, label %42

42:                                               ; preds = %34
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32*, i32** %7, align 8
  %48 = load i64, i64* %15, align 8
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 2
  %53 = call i32 @memcpy(i32* %43, i32* %46, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* %15, align 8
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 2
  %60 = load i32*, i32** %12, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %15, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %15, align 8
  br label %113

70:                                               ; preds = %34, %26
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @_WPA2_IE_ID_, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32*, i32** %7, align 8
  %80 = load i64, i64* %15, align 8
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 2
  %85 = call i32 @memcpy(i32* %75, i32* %78, i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %15, align 8
  %88 = add i64 %87, 1
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 2
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %94, 1
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %15, align 8
  br label %112

102:                                              ; preds = %70
  %103 = load i32*, i32** %7, align 8
  %104 = load i64, i64* %15, align 8
  %105 = add i64 %104, 1
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %15, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %15, align 8
  br label %112

112:                                              ; preds = %102, %74
  br label %113

113:                                              ; preds = %112, %42
  br label %22

114:                                              ; preds = %22
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %116, %118
  ret i32 %119
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
