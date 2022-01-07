; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_parse_wpa2_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_parse_wpa2_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@_WPA2_IE_ID_ = common dso_local global i64 0, align 8
@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_parse_wpa2_ie(i64* %0, i32 %1, i32* %2, i32* %3) #0 {
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
  br label %115

19:                                               ; preds = %4
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @_WPA2_IE_ID_, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24, %19
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %115

35:                                               ; preds = %24
  %36 = load i64*, i64** %6, align 8
  store i64* %36, i64** %13, align 8
  %37 = load i64*, i64** %13, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 4
  store i64* %38, i64** %13, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load i64*, i64** %13, align 8
  %46 = call i32 @r8712_get_wpa2_cipher_suite(i64* %45)
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %49 = load i64*, i64** %13, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64* %51, i64** %13, align 8
  %52 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %62

55:                                               ; preds = %35
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %115

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %11, align 4
  %64 = icmp sge i32 %63, 2
  br i1 %64, label %65, label %107

65:                                               ; preds = %62
  %66 = load i64*, i64** %13, align 8
  %67 = bitcast i64* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i64*, i64** %13, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  store i64* %71, i64** %13, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 2
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %80 = mul nsw i32 %78, %79
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %65
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %115

85:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %103, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load i64*, i64** %13, align 8
  %92 = call i32 @r8712_get_wpa2_cipher_suite(i64* %91)
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %97 = load i64*, i64** %13, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64* %99, i64** %13, align 8
  %100 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %90
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %86

106:                                              ; preds = %86
  br label %114

107:                                              ; preds = %62
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %115

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %106
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %110, %82, %58, %32, %16
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @r8712_get_wpa2_cipher_suite(i64*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
