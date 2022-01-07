; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_get_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_get_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.r8712_get_wpa_ie.wpa_oui_type = private unnamed_addr constant [4 x i8] c"\00P\F2\01", align 1
@_WPA_IE_ID_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @r8712_get_wpa_ie(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.r8712_get_wpa_ie.wpa_oui_type, i32 0, i32 0), i64 4, i1 false)
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  br label %14

14:                                               ; preds = %3, %62
  %15 = load i8*, i8** %11, align 8
  %16 = load i32, i32* @_WPA_IE_ID_, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @r8712_get_ie(i8* %15, i32 %16, i32* %8, i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %25 = call i64 @memcmp(i8* %23, i8* %24, i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %45

28:                                               ; preds = %21
  %29 = bitcast i32* %9 to i8*
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 6
  %32 = call i32 @memcpy(i8* %29, i8* %31, i32 4)
  %33 = call i32 @le16_to_cpus(i32* %9)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %45

37:                                               ; preds = %28
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %6, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %4, align 8
  br label %70

43:                                               ; preds = %14
  %44 = load i8*, i8** %6, align 8
  store i8 0, i8* %44, align 1
  store i8* null, i8** %4, align 8
  br label %70

45:                                               ; preds = %36, %27
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sub nsw i64 %47, %52
  %54 = sub nsw i64 %53, 2
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %68

62:                                               ; preds = %45
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 2, %63
  %65 = load i8*, i8** %11, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %11, align 8
  br label %14

68:                                               ; preds = %61
  %69 = load i8*, i8** %6, align 8
  store i8 0, i8* %69, align 1
  store i8* null, i8** %4, align 8
  br label %70

70:                                               ; preds = %68, %43, %37
  %71 = load i8*, i8** %4, align 8
  ret i8* %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @r8712_get_ie(i8*, i32, i32*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @le16_to_cpus(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
