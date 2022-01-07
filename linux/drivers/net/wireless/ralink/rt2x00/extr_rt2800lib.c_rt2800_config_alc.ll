; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_alc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_alc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }

@TX_ALC_CFG_0 = common dso_local global i32 0, align 4
@TX_ALC_CFG_0_CH_INIT_0 = common dso_local global i32 0, align 4
@TX_ALC_CFG_0_CH_INIT_1 = common dso_local global i32 0, align 4
@TX_ALC_CFG_0_LIMIT_0 = common dso_local global i32 0, align 4
@TX_ALC_CFG_0_LIMIT_1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_INTERNAL_TX_ALC = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_INIT = common dso_local global i32 0, align 4
@TX_ALC_CFG_1 = common dso_local global i32 0, align 4
@TX_ALC_CFG_1_TX_TEMP_COMP = common dso_local global i32 0, align 4
@MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MAC_STATUS_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wait MAC Status to MAX !!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_channel*, i32)* @rt2800_config_alc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_alc(%struct.rt2x00_dev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 47
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 47, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %3
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 47
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 47, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %30 = load i32, i32* @TX_ALC_CFG_0, align 4
  %31 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @TX_ALC_CFG_0_CH_INIT_0, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rt2x00_set_field32(i32* %12, i32 %32, i32 %33)
  %35 = load i32, i32* @TX_ALC_CFG_0_CH_INIT_1, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rt2x00_set_field32(i32* %12, i32 %35, i32 %36)
  %38 = load i32, i32* @TX_ALC_CFG_0_LIMIT_0, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %12, i32 %38, i32 %39)
  %41 = load i32, i32* @TX_ALC_CFG_0_LIMIT_1, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @rt2x00_set_field32(i32* %12, i32 %41, i32 %42)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %45 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %46 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @EEPROM_NIC_CONF1_INTERNAL_TX_ALC, align 4
  %49 = call i64 @rt2x00_get_field16(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %28
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %53 = load i32, i32* @EEPROM_TXPOWER_INIT, align 4
  %54 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @TX_ALC_CFG_0_CH_INIT_0, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @rt2x00_set_field32(i32* %12, i32 %55, i32 %56)
  %58 = load i32, i32* @TX_ALC_CFG_0_CH_INIT_1, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @rt2x00_set_field32(i32* %12, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %51, %28
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %63 = load i32, i32* @TX_ALC_CFG_0, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %62, i32 %63, i32 %64)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %67 = load i32, i32* @TX_ALC_CFG_1, align 4
  %68 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @TX_ALC_CFG_1_TX_TEMP_COMP, align 4
  %70 = call i32 @rt2x00_set_field32(i32* %12, i32 %69, i32 0)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %72 = load i32, i32* @TX_ALC_CFG_1, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %71, i32 %72, i32 %73)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %76 = load i32, i32* @MAC_SYS_CTRL, align 4
  %77 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %79 = load i32, i32* @MAC_SYS_CTRL, align 4
  %80 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %78, i32 %79, i32 0)
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %95, %61
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 10000
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %86 = load i32, i32* @MAC_STATUS_CFG, align 4
  %87 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = call i32 @usleep_range(i32 50, i32 200)
  br label %94

93:                                               ; preds = %84
  br label %98

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %81

98:                                               ; preds = %93, %81
  %99 = load i32, i32* %14, align 4
  %100 = icmp eq i32 %99, 10000
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %103 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %106 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 2457
  br i1 %108, label %109, label %127

109:                                              ; preds = %104
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %111 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %110, i32 30)
  store i32 %111, i32* %13, align 4
  store i32 64, i32* %13, align 4
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %112, i32 30, i32 %113)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %116 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %115, i32 39, i32 0)
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %118 = call i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %122 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %121, i32 42, i32 251)
  br label %126

123:                                              ; preds = %109
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %125 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %124, i32 42, i32 123)
  br label %126

126:                                              ; preds = %123, %120
  br label %145

127:                                              ; preds = %104
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %129 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %128, i32 30)
  store i32 %129, i32* %13, align 4
  store i32 31, i32* %13, align 4
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %130, i32 30, i32 %131)
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %134 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %133, i32 39, i32 128)
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %136 = call i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %140 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %139, i32 42, i32 219)
  br label %144

141:                                              ; preds = %127
  %142 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %143 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %142, i32 42, i32 91)
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %144, %126
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %147 = load i32, i32* @MAC_SYS_CTRL, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %146, i32 %147, i32 %148)
  %150 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %151 = call i32 @rt2800_vco_calibration(%struct.rt2x00_dev* %150)
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_vco_calibration(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
