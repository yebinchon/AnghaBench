; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c__rtl92de_signal_scale_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c__rtl92de_signal_scale_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*, i64)* @_rtl92de_signal_scale_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_rtl92de_signal_scale_mapping(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sge i64 %6, 61
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp sle i64 %9, 100
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = sub nsw i64 %12, 60
  %14 = sdiv i64 %13, 4
  %15 = add nsw i64 90, %14
  store i64 %15, i64* %5, align 8
  br label %85

16:                                               ; preds = %8, %2
  %17 = load i64, i64* %4, align 8
  %18 = icmp sge i64 %17, 41
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = icmp sle i64 %20, 60
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 %23, 40
  %25 = sdiv i64 %24, 2
  %26 = add nsw i64 78, %25
  store i64 %26, i64* %5, align 8
  br label %84

27:                                               ; preds = %19, %16
  %28 = load i64, i64* %4, align 8
  %29 = icmp sge i64 %28, 31
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i64, i64* %4, align 8
  %32 = icmp sle i64 %31, 40
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = sub nsw i64 %34, 30
  %36 = add nsw i64 66, %35
  store i64 %36, i64* %5, align 8
  br label %83

37:                                               ; preds = %30, %27
  %38 = load i64, i64* %4, align 8
  %39 = icmp sge i64 %38, 21
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i64, i64* %4, align 8
  %42 = icmp sle i64 %41, 30
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i64, i64* %4, align 8
  %45 = sub nsw i64 %44, 20
  %46 = add nsw i64 54, %45
  store i64 %46, i64* %5, align 8
  br label %82

47:                                               ; preds = %40, %37
  %48 = load i64, i64* %4, align 8
  %49 = icmp sge i64 %48, 5
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i64, i64* %4, align 8
  %52 = icmp sle i64 %51, 20
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i64, i64* %4, align 8
  %55 = sub nsw i64 %54, 5
  %56 = mul nsw i64 %55, 2
  %57 = sdiv i64 %56, 3
  %58 = add nsw i64 42, %57
  store i64 %58, i64* %5, align 8
  br label %81

59:                                               ; preds = %50, %47
  %60 = load i64, i64* %4, align 8
  %61 = icmp eq i64 %60, 4
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i64 36, i64* %5, align 8
  br label %80

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  %65 = icmp eq i64 %64, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i64 27, i64* %5, align 8
  br label %79

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = icmp eq i64 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i64 18, i64* %5, align 8
  br label %78

71:                                               ; preds = %67
  %72 = load i64, i64* %4, align 8
  %73 = icmp eq i64 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i64 9, i64* %5, align 8
  br label %77

75:                                               ; preds = %71
  %76 = load i64, i64* %4, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %75, %74
  br label %78

78:                                               ; preds = %77, %70
  br label %79

79:                                               ; preds = %78, %66
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %82, %33
  br label %84

84:                                               ; preds = %83, %22
  br label %85

85:                                               ; preds = %84, %11
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
