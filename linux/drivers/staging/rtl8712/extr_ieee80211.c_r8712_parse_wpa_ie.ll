; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_parse_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_parse_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@_WPA_IE_ID_ = common dso_local global i64 0, align 8
@WPA_OUI_TYPE = common dso_local global i64 0, align 8
@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_parse_wpa_ie(i64* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %123

19:                                               ; preds = %4
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @_WPA_IE_ID_, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load i64*, i64** %6, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* @WPA_OUI_TYPE, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %38 = call i64 @memcmp(i64* %34, i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32, %24, %19
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %123

43:                                               ; preds = %32
  %44 = load i64*, i64** %6, align 8
  store i64* %44, i64** %13, align 8
  %45 = load i64*, i64** %13, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 8
  store i64* %46, i64** %13, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 8
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = load i64*, i64** %13, align 8
  %54 = call i32 @r8712_get_wpa_cipher_suite(i64* %53)
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %57 = load i64*, i64** %13, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64* %59, i64** %13, align 8
  %60 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %70

63:                                               ; preds = %43
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %123

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %11, align 4
  %72 = icmp sge i32 %71, 2
  br i1 %72, label %73, label %115

73:                                               ; preds = %70
  %74 = load i64*, i64** %13, align 8
  %75 = bitcast i64* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i64*, i64** %13, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 2
  store i64* %79, i64** %13, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %80, 2
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %88 = mul nsw i32 %86, %87
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84, %73
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %123

93:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %111, %93
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load i64*, i64** %13, align 8
  %100 = call i32 @r8712_get_wpa_cipher_suite(i64* %99)
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %105 = load i64*, i64** %13, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64* %107, i64** %13, align 8
  %108 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %98
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %94

114:                                              ; preds = %94
  br label %122

115:                                              ; preds = %70
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %123

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %114
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %118, %90, %66, %40, %16
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i64 @memcmp(i64*, i8*, i32) #1

declare dso_local i32 @r8712_get_wpa_cipher_suite(i64*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
