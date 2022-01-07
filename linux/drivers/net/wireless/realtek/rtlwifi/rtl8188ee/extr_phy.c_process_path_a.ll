; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_process_path_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_process_path_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i64 }

@RT_CID_819X_HP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @process_path_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_path_a(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call i32 @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(i32 %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %7, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %130, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %133

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %30, -842150451
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @_rtl8188e_config_rf_radio_a(%struct.ieee80211_hw* %33, i32 %34, i32 %35)
  br label %129

37:                                               ; preds = %18
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 2
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %133

43:                                               ; preds = %37
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @_rtl88e_check_condition(%struct.ieee80211_hw* %44, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %81, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @READ_NEXT_RF_PAIR(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %73, %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 57005
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 52719
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 52685
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, 2
  %70 = icmp slt i32 %67, %69
  br label %71

71:                                               ; preds = %66, %63, %60, %57
  %72 = phi i1 [ false, %63 ], [ false, %60 ], [ false, %57 ], [ %70, %66 ]
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @READ_NEXT_RF_PAIR(i32 %74, i32 %75, i32 %76)
  br label %57

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %10, align 4
  br label %128

81:                                               ; preds = %43
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @READ_NEXT_RF_PAIR(i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %102, %81
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 57005
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 52719
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 52685
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 2
  %99 = icmp slt i32 %96, %98
  br label %100

100:                                              ; preds = %95, %92, %89, %86
  %101 = phi i1 [ false, %92 ], [ false, %89 ], [ false, %86 ], [ %99, %95 ]
  br i1 %101, label %102, label %111

102:                                              ; preds = %100
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @_rtl8188e_config_rf_radio_a(%struct.ieee80211_hw* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @READ_NEXT_RF_PAIR(i32 %107, i32 %108, i32 %109)
  br label %86

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %122, %111
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 57005
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 %117, 2
  %119 = icmp slt i32 %116, %118
  br label %120

120:                                              ; preds = %115, %112
  %121 = phi i1 [ false, %112 ], [ %119, %115 ]
  br i1 %121, label %122, label %127

122:                                              ; preds = %120
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @READ_NEXT_RF_PAIR(i32 %123, i32 %124, i32 %125)
  br label %112

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %78
  br label %129

129:                                              ; preds = %128, %32
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %10, align 4
  br label %14

133:                                              ; preds = %42, %14
  %134 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %135 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RT_CID_819X_HP, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %141 = call i32 @_rtl8188e_config_rf_radio_a(%struct.ieee80211_hw* %140, i32 82, i32 517309)
  br label %142

142:                                              ; preds = %139, %133
  ret void
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8188e_config_rf_radio_a(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl88e_check_condition(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @READ_NEXT_RF_PAIR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
