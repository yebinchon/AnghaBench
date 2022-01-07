; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_config_rf_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_config_rf_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RTL8723ERADIOA_1TARRAYLENGTH = common dso_local global i32 0, align 4
@RTL8723E_RADIOA_1TARRAY = common dso_local global i32* null, align 8
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723e_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %9 = load i32, i32* @RTL8723ERADIOA_1TARRAYLENGTH, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32*, i32** @RTL8723E_RADIOA_1TARRAY, align 8
  store i32* %10, i32** %7, align 8
  store i32 1, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %99 [
    i32 131, label %12
    i32 130, label %98
    i32 129, label %98
    i32 128, label %98
  ]

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %94, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %97

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 254
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @mdelay(i32 50)
  br label %93

26:                                               ; preds = %17
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 253
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @mdelay(i32 5)
  br label %92

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 252
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @mdelay(i32 1)
  br label %91

44:                                               ; preds = %35
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 251
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @udelay(i32 50)
  br label %90

53:                                               ; preds = %44
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 250
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 @udelay(i32 5)
  br label %89

62:                                               ; preds = %53
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 249
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 @udelay(i32 1)
  br label %88

71:                                               ; preds = %62
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %72, i32 %73, i32 %78, i32 %79, i32 %85)
  %87 = call i32 @udelay(i32 1)
  br label %88

88:                                               ; preds = %71, %69
  br label %89

89:                                               ; preds = %88, %60
  br label %90

90:                                               ; preds = %89, %51
  br label %91

91:                                               ; preds = %90, %42
  br label %92

92:                                               ; preds = %91, %33
  br label %93

93:                                               ; preds = %92, %24
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %5, align 4
  br label %13

97:                                               ; preds = %13
  br label %99

98:                                               ; preds = %2, %2, %2
  br label %99

99:                                               ; preds = %2, %98, %97
  ret i32 1
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
