; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_get_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_get_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtw_get_wpa_ie.wpa_oui_type = internal constant [4 x i8] c"\00P\F2\01", align 1
@_WPA_IE_ID_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rtw_get_wpa_ie(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %3, %64
  %16 = load i8*, i8** %11, align 8
  %17 = load i32, i32* @_WPA_IE_ID_, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i8* @rtw_get_ie(i8* %16, i32 %17, i32* %8, i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %15
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = call i64 @memcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rtw_get_wpa_ie.wpa_oui_type, i64 0, i64 0), i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %47

28:                                               ; preds = %22
  %29 = bitcast i32* %10 to i8*
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 6
  %32 = call i32 @memcpy(i8* %29, i8* %31, i32 4)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %47

38:                                               ; preds = %28
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i8*, i8** %11, align 8
  store i8* %44, i8** %4, align 8
  br label %72

45:                                               ; preds = %15
  %46 = load i32*, i32** %6, align 8
  store i32 0, i32* %46, align 4
  store i8* null, i8** %4, align 8
  br label %72

47:                                               ; preds = %37, %27
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sub nsw i64 %49, %54
  %56 = sub nsw i64 %55, 2
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %56, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %70

64:                                               ; preds = %47
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 2, %65
  %67 = load i8*, i8** %11, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %11, align 8
  br label %15

70:                                               ; preds = %63
  %71 = load i32*, i32** %6, align 8
  store i32 0, i32* %71, align 4
  store i8* null, i8** %4, align 8
  br label %72

72:                                               ; preds = %70, %45, %38
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i8* @rtw_get_ie(i8*, i32, i32*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
