; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_probe_hw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_probe_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, %struct.hw_mode_spec }
%struct.hw_mode_spec = type { i32, i32, %struct.channel_info*, i8*, i32 }
%struct.channel_info = type { i8*, i8* }

@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@SUPPORT_RATE_OFDM = common dso_local global i32 0, align 4
@RF2528 = common dso_local global i32 0, align 4
@rf_vals_bg_2528 = common dso_local global i8* null, align 8
@RF5226 = common dso_local global i32 0, align 4
@SUPPORT_BAND_5GHZ = common dso_local global i32 0, align 4
@rf_vals_5226 = common dso_local global i8* null, align 8
@RF2527 = common dso_local global i32 0, align 4
@rf_vals_5225_2527 = common dso_local global i8* null, align 8
@RF5225 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_G_START = common dso_local global i32 0, align 4
@MAX_TXPOWER = common dso_local global i8* null, align 8
@EEPROM_TXPOWER_A_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt73usb_probe_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_probe_hw_mode(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.hw_mode_spec*, align 8
  %5 = alloca %struct.channel_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 2
  store %struct.hw_mode_spec* %9, %struct.hw_mode_spec** %4, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %14 = call i32 @ieee80211_hw_set(i32 %12, i32 %13)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SIGNAL_DBM, align 4
  %19 = call i32 @ieee80211_hw_set(i32 %17, i32 %18)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SUPPORTS_PS, align 4
  %24 = call i32 @ieee80211_hw_set(i32 %22, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SET_IEEE80211_DEV(i32 %27, i32 %30)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %37 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %35, i32 %36)
  %38 = call i32 @SET_IEEE80211_PERM_ADDR(i32 %34, i8* %37)
  %39 = load i32, i32* @SUPPORT_BAND_2GHZ, align 4
  %40 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %41 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %43 = load i32, i32* @SUPPORT_RATE_OFDM, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %46 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = load i32, i32* @RF2528, align 4
  %49 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %1
  %52 = load i8*, i8** @rf_vals_bg_2528, align 8
  %53 = call i8* @ARRAY_SIZE(i8* %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %56 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i8*, i8** @rf_vals_bg_2528, align 8
  %58 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %59 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %112

60:                                               ; preds = %1
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %62 = load i32, i32* @RF5226, align 4
  %63 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %67 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %68 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i8*, i8** @rf_vals_5226, align 8
  %72 = call i8* @ARRAY_SIZE(i8* %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %75 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i8*, i8** @rf_vals_5226, align 8
  %77 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %78 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  br label %111

79:                                               ; preds = %60
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %81 = load i32, i32* @RF2527, align 4
  %82 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %86 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %85, i32 0, i32 1
  store i32 14, i32* %86, align 4
  %87 = load i8*, i8** @rf_vals_5225_2527, align 8
  %88 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %89 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  br label %110

90:                                               ; preds = %79
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %92 = load i32, i32* @RF5225, align 4
  %93 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %97 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %98 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i8*, i8** @rf_vals_5225_2527, align 8
  %102 = call i8* @ARRAY_SIZE(i8* %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %105 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i8*, i8** @rf_vals_5225_2527, align 8
  %107 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %108 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %95, %90
  br label %110

110:                                              ; preds = %109, %84
  br label %111

111:                                              ; preds = %110, %65
  br label %112

112:                                              ; preds = %111, %51
  %113 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %114 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.channel_info* @kcalloc(i32 %115, i32 16, i32 %116)
  store %struct.channel_info* %117, %struct.channel_info** %5, align 8
  %118 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %119 = icmp ne %struct.channel_info* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %193

123:                                              ; preds = %112
  %124 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %125 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %126 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %125, i32 0, i32 2
  store %struct.channel_info* %124, %struct.channel_info** %126, align 8
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %128 = load i32, i32* @EEPROM_TXPOWER_G_START, align 4
  %129 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %127, i32 %128)
  store i8* %129, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %151, %123
  %131 = load i32, i32* %7, align 4
  %132 = icmp ult i32 %131, 14
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = load i8*, i8** @MAX_TXPOWER, align 8
  %135 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %135, i64 %137
  %139 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %138, i32 0, i32 1
  store i8* %134, i8** %139, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = call i8* @TXPOWER_FROM_DEV(i8 signext %144)
  %146 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %146, i64 %148
  %150 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %149, i32 0, i32 0
  store i8* %145, i8** %150, align 8
  br label %151

151:                                              ; preds = %133
  %152 = load i32, i32* %7, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %130

154:                                              ; preds = %130
  %155 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %156 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %157, 14
  br i1 %158, label %159, label %192

159:                                              ; preds = %154
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %161 = load i32, i32* @EEPROM_TXPOWER_A_START, align 4
  %162 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %160, i32 %161)
  store i8* %162, i8** %6, align 8
  store i32 14, i32* %7, align 4
  br label %163

163:                                              ; preds = %188, %159
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %166 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp ult i32 %164, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %163
  %170 = load i8*, i8** @MAX_TXPOWER, align 8
  %171 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %172 = load i32, i32* %7, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %171, i64 %173
  %175 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %174, i32 0, i32 1
  store i8* %170, i8** %175, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sub i32 %177, 14
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = call i8* @TXPOWER_FROM_DEV(i8 signext %181)
  %183 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %184 = load i32, i32* %7, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %183, i64 %185
  %187 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %186, i32 0, i32 0
  store i8* %182, i8** %187, align 8
  br label %188

188:                                              ; preds = %169
  %189 = load i32, i32* %7, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %163

191:                                              ; preds = %163
  br label %192

192:                                              ; preds = %191, %154
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %120
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @ieee80211_hw_set(i32, i32) #1

declare dso_local i32 @SET_IEEE80211_DEV(i32, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(i32, i8*) #1

declare dso_local i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.channel_info* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @TXPOWER_FROM_DEV(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
