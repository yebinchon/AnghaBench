; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c___rtl8821ae_phy_config_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c___rtl8821ae_phy_config_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@COND_ELSE = common dso_local global i64 0, align 8
@COND_ENDIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32*, i32, void (%struct.ieee80211_hw*, i32, i32)*)* @__rtl8821ae_phy_config_with_headerfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rtl8821ae_phy_config_with_headerfile(%struct.ieee80211_hw* %0, i32* %1, i32 %2, void (%struct.ieee80211_hw*, i32, i32)* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.ieee80211_hw*, i32, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (%struct.ieee80211_hw*, i32, i32)* %3, void (%struct.ieee80211_hw*, i32, i32)** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %95, %4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %98

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @BIT(i32 31)
  %34 = call i32 @BIT(i32 30)
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %20
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @BIT(i32 31)
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @BIT(i32 29)
  %46 = call i32 @BIT(i32 28)
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = ashr i32 %48, 28
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %77

54:                                               ; preds = %43
  %55 = load i64, i64* %10, align 8
  %56 = icmp eq i64 %55, 2
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 0, i32 1
  store i32 %61, i32* %11, align 4
  br label %76

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %75

66:                                               ; preds = %62
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @_rtl8821ae_check_positive(%struct.ieee80211_hw* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %53
  br label %85

78:                                               ; preds = %38
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @BIT(i32 30)
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %78
  br label %85

85:                                               ; preds = %84, %77
  br label %95

86:                                               ; preds = %20
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load void (%struct.ieee80211_hw*, i32, i32)*, void (%struct.ieee80211_hw*, i32, i32)** %8, align 8
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  call void %90(%struct.ieee80211_hw* %91, i32 %92, i32 %93)
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %9, align 4
  br label %15

98:                                               ; preds = %15
  ret i32 1
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @_rtl8821ae_check_positive(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
