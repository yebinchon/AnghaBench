; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rtw_get_wpa_ie.wpa_oui_type = private unnamed_addr constant [4 x i8] c"\00P\F2\01", align 1
@_WPA_IE_ID_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rtw_get_wpa_ie(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.rtw_get_wpa_ie.wpa_oui_type, i32 0, i32 0), i64 4, i1 false)
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %12, align 4
  br label %17

17:                                               ; preds = %3, %67
  %18 = load i8*, i8** %11, align 8
  %19 = load i32, i32* @_WPA_IE_ID_, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i8* @rtw_get_ie(i8* %18, i32 %19, i32* %8, i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %17
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %28 = call i64 @memcmp(i8* %26, i8* %27, i32 4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %50

31:                                               ; preds = %24
  %32 = bitcast i32* %13 to i8*
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 6
  %35 = call i32 @memcpy(i8* %32, i8* %34, i32 4)
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %50

41:                                               ; preds = %31
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** %11, align 8
  store i8* %47, i8** %4, align 8
  br label %75

48:                                               ; preds = %17
  %49 = load i32*, i32** %6, align 8
  store i32 0, i32* %49, align 4
  store i8* null, i8** %4, align 8
  br label %75

50:                                               ; preds = %40, %30
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sub nsw i64 %52, %57
  %59 = sub nsw i64 %58, 2
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %59, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %73

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 2, %68
  %70 = load i8*, i8** %11, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %11, align 8
  br label %17

73:                                               ; preds = %66
  %74 = load i32*, i32** %6, align 8
  store i32 0, i32* %74, align 4
  store i8* null, i8** %4, align 8
  br label %75

75:                                               ; preds = %73, %48, %41
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @rtw_get_ie(i8*, i32, i32*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
