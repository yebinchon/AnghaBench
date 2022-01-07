; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_rfe_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_rfe_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32, i64, i64, i64, i64, i64 }

@EEPROM_RFE_OPTION = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"RFE Type: 0x%2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32*, i32)* @_rtl8821ae_read_rfe_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_read_rfe_type(%struct.ieee80211_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %7, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %102, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* @EEPROM_RFE_OPTION, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BIT(i32 7)
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %15
  %24 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %25 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %30 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %35 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %40 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %45 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %44, i32 0, i32 0
  store i32 3, i32* %45, align 8
  br label %49

46:                                               ; preds = %38, %33
  %47 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %48 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %53

50:                                               ; preds = %28
  %51 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %52 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %51, i32 0, i32 0
  store i32 2, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %49
  br label %57

54:                                               ; preds = %23
  %55 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %56 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %53
  br label %101

58:                                               ; preds = %15
  %59 = load i32*, i32** %5, align 8
  %60 = load i64, i64* @EEPROM_RFE_OPTION, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 63
  %64 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %65 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %67 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %100

70:                                               ; preds = %58
  %71 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %72 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %70
  %76 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %77 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %82 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %87 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85, %80, %75, %70
  %91 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %92 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %98 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %97, i32 0, i32 0
  store i32 2, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %85, %58
  br label %101

101:                                              ; preds = %100, %57
  br label %105

102:                                              ; preds = %3
  %103 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %104 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %103, i32 0, i32 0
  store i32 4, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %101
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %107 = load i32, i32* @COMP_INIT, align 4
  %108 = load i32, i32* @DBG_LOUD, align 4
  %109 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %110 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @RT_TRACE(%struct.rtl_priv* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %111)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
