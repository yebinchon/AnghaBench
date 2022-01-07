; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mgmt.c_rsi_band_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mgmt.c_rsi_band_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { i64, i64, i64, i32, %struct.rsi_hw* }
%struct.rsi_hw = type { i64, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_channel = type { i64 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20 = common dso_local global i64 0, align 8
@BW_20MHZ = common dso_local global i64 0, align 8
@BW_40MHZ = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@EP_2GHZ_40MHZ = common dso_local global i64 0, align 8
@EP_2GHZ_20MHZ = common dso_local global i64 0, align 8
@EP_5GHZ_40MHZ = common dso_local global i64 0, align 8
@EP_5GHZ_20MHZ = common dso_local global i64 0, align 8
@RSI_DEV_9116 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsi_band_check(%struct.rsi_common* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsi_common*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.rsi_hw*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rsi_common* %0, %struct.rsi_common** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %11 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %12 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %11, i32 0, i32 4
  %13 = load %struct.rsi_hw*, %struct.rsi_hw** %12, align 8
  store %struct.rsi_hw* %13, %struct.rsi_hw** %6, align 8
  %14 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %15 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %15, align 8
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %7, align 8
  %17 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %18 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %21 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %24 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %32 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %31, i32 0, i32 3
  store i32 1, i32* %32, align 8
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %37 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %2
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46, %38
  %55 = load i64, i64* @BW_20MHZ, align 8
  %56 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %57 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %62

58:                                               ; preds = %46
  %59 = load i64, i64* @BW_40MHZ, align 8
  %60 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %61 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %64 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %70 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i64, i64* @EP_2GHZ_40MHZ, align 8
  %75 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %76 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %81

77:                                               ; preds = %68
  %78 = load i64, i64* @EP_2GHZ_20MHZ, align 8
  %79 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %80 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %73
  br label %96

82:                                               ; preds = %62
  %83 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %84 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i64, i64* @EP_5GHZ_40MHZ, align 8
  %89 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %90 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %95

91:                                               ; preds = %82
  %92 = load i64, i64* @EP_5GHZ_20MHZ, align 8
  %93 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %94 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %81
  %97 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %98 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %104 = call i32 @rsi_program_bb_rf(%struct.rsi_common* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %3, align 4
  br label %143

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %96
  %111 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %112 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %110
  %117 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %118 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @RSI_DEV_9116, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %124 = call i32 @rsi_load_9116_bootup_params(%struct.rsi_common* %123)
  store i32 %124, i32* %10, align 4
  br label %128

125:                                              ; preds = %116
  %126 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %127 = call i32 @rsi_load_bootup_params(%struct.rsi_common* %126)
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %143

133:                                              ; preds = %128
  %134 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %135 = call i32 @rsi_load_radio_caps(%struct.rsi_common* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %3, align 4
  br label %143

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %110
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %138, %131, %107
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @rsi_program_bb_rf(%struct.rsi_common*) #1

declare dso_local i32 @rsi_load_9116_bootup_params(%struct.rsi_common*) #1

declare dso_local i32 @rsi_load_bootup_params(%struct.rsi_common*) #1

declare dso_local i32 @rsi_load_radio_caps(%struct.rsi_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
