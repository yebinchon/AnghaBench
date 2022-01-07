; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_rtw_get_center_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_rtw_get_center_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_get_center_ch(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @CHANNEL_WIDTH_80, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %96

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 36
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 40
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 44
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, 48
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15, %12
  store i64 42, i64* %7, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 52
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %29, 56
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %32, 60
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %35, 64
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31, %28, %25
  store i64 58, i64* %7, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %39, 100
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %42, 104
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %45, 108
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %4, align 8
  %49 = icmp eq i64 %48, 112
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44, %41, %38
  store i64 106, i64* %7, align 8
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %52, 116
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %4, align 8
  %56 = icmp eq i64 %55, 120
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %58, 124
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  %62 = icmp eq i64 %61, 128
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %57, %54, %51
  store i64 122, i64* %7, align 8
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i64, i64* %4, align 8
  %66 = icmp eq i64 %65, 132
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %4, align 8
  %69 = icmp eq i64 %68, 136
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %4, align 8
  %72 = icmp eq i64 %71, 140
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %4, align 8
  %75 = icmp eq i64 %74, 144
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %70, %67, %64
  store i64 138, i64* %7, align 8
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i64, i64* %4, align 8
  %79 = icmp eq i64 %78, 149
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %4, align 8
  %82 = icmp eq i64 %81, 153
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %4, align 8
  %85 = icmp eq i64 %84, 157
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %4, align 8
  %88 = icmp eq i64 %87, 161
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83, %80, %77
  store i64 155, i64* %7, align 8
  br label %95

90:                                               ; preds = %86
  %91 = load i64, i64* %4, align 8
  %92 = icmp sle i64 %91, 14
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i64 7, i64* %7, align 8
  br label %94

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %89
  br label %112

96:                                               ; preds = %3
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i64, i64* %4, align 8
  %106 = add nsw i64 %105, 2
  store i64 %106, i64* %7, align 8
  br label %110

107:                                              ; preds = %100
  %108 = load i64, i64* %4, align 8
  %109 = sub nsw i64 %108, 2
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %96
  br label %112

112:                                              ; preds = %111, %95
  %113 = load i64, i64* %7, align 8
  ret i64 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
