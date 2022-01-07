; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_txpower_rt6352.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_txpower_rt6352.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"ignoring EEPROM HT40 power delta: %d\0A\00", align 1
@EEPROM_TXPOWER_BYRATE = common dso_local global i32 0, align 4
@CONFIG_CHANNEL_HT40 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0 = common dso_local global i64 0, align 8
@TX_PWR_CFG_1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1B_48MBS = common dso_local global i32 0, align 4
@TX_PWR_CFG_7B_54MBS = common dso_local global i32 0, align 4
@TX_PWR_CFG_2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2B_MCS6_MCS7 = common dso_local global i32 0, align 4
@TX_PWR_CFG_7B_MCS7 = common dso_local global i32 0, align 4
@TX_PWR_CFG_7 = common dso_local global i64 0, align 8
@TX_PWR_CFG_3 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3B_MCS14 = common dso_local global i32 0, align 4
@TX_PWR_CFG_8B_MCS15 = common dso_local global i32 0, align 4
@TX_PWR_CFG_8 = common dso_local global i64 0, align 8
@TX_PWR_CFG_4 = common dso_local global i32 0, align 4
@TX_PWR_CFG_4B_STBC_MCS6 = common dso_local global i32 0, align 4
@TX_PWR_CFG_9B_STBC_MCS7 = common dso_local global i32 0, align 4
@TX_PWR_CFG_9 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_channel*, i32)* @rt2800_config_txpower_rt6352 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_txpower_rt6352(%struct.rt2x00_dev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
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
  %15 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %20 = load i32, i32* %14, align 4
  %21 = call i32 @rt2800_get_txpower_bw_comp(%struct.rt2x00_dev* %19, i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %3
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %128, %28
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %32, label %131

32:                                               ; preds = %29
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %34 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 %35, 2
  %37 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %33, i32 %34, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 63
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %43, %32
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 16128
  %50 = ashr i32 %49, 8
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %62 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %63 = load i32, i32* %13, align 4
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 %64, 1
  %66 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %61, i32 %62, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 63
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i32, i32* %12, align 4
  %76 = shl i32 %75, 16
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 16128
  %81 = ashr i32 %80, 8
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %84, %74
  %88 = load i32, i32* %12, align 4
  %89 = shl i32 %88, 24
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = shl i32 %92, 16
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %98 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %97, i32 0, i32 0
  %99 = call i32 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %106 = load i64, i64* @TX_PWR_CFG_0, align 8
  %107 = load i32, i32* %13, align 4
  %108 = mul nsw i32 %107, 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %105, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %104, %101
  br label %127

114:                                              ; preds = %87
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %119 = load i64, i64* @TX_PWR_CFG_0, align 8
  %120 = load i32, i32* %13, align 4
  %121 = mul nsw i32 %120, 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %119, %122
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %118, i64 %123, i32 %124)
  br label %126

126:                                              ; preds = %117, %114
  br label %127

127:                                              ; preds = %126, %113
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %29

131:                                              ; preds = %29
  store i32 0, i32* %8, align 4
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %133 = load i32, i32* @TX_PWR_CFG_1, align 4
  %134 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %132, i32 %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @TX_PWR_CFG_1B_48MBS, align 4
  %137 = call i32 @rt2x00_get_field32(i32 %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* @TX_PWR_CFG_7B_54MBS, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @rt2x00_set_field32(i32* %8, i32 %138, i32 %139)
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %142 = load i32, i32* @TX_PWR_CFG_2, align 4
  %143 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %141, i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @TX_PWR_CFG_2B_MCS6_MCS7, align 4
  %146 = call i32 @rt2x00_get_field32(i32 %144, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* @TX_PWR_CFG_7B_MCS7, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @rt2x00_set_field32(i32* %8, i32 %147, i32 %148)
  %150 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %151 = load i64, i64* @TX_PWR_CFG_7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %150, i64 %151, i32 %152)
  store i32 0, i32* %8, align 4
  %154 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %155 = load i32, i32* @TX_PWR_CFG_3, align 4
  %156 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %154, i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @TX_PWR_CFG_3B_MCS14, align 4
  %159 = call i32 @rt2x00_get_field32(i32 %157, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* @TX_PWR_CFG_8B_MCS15, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @rt2x00_set_field32(i32* %8, i32 %160, i32 %161)
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %164 = load i64, i64* @TX_PWR_CFG_8, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %163, i64 %164, i32 %165)
  store i32 0, i32* %8, align 4
  %167 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %168 = load i32, i32* @TX_PWR_CFG_4, align 4
  %169 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %167, i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @TX_PWR_CFG_4B_STBC_MCS6, align 4
  %172 = call i32 @rt2x00_get_field32(i32 %170, i32 %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* @TX_PWR_CFG_9B_STBC_MCS7, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @rt2x00_set_field32(i32* %8, i32 %173, i32 %174)
  %176 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %177 = load i64, i64* @TX_PWR_CFG_9, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %176, i64 %177, i32 %178)
  %180 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %181 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @rt2800_config_alc(%struct.rt2x00_dev* %180, %struct.ieee80211_channel* %181, i32 %182)
  ret void
}

declare dso_local i32 @rt2800_get_txpower_bw_comp(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i64, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_config_alc(%struct.rt2x00_dev*, %struct.ieee80211_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
