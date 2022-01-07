; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_probe_hw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_probe_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_6__*, i32, %struct.hw_mode_spec }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hw_mode_spec = type { i32, i32, %struct.channel_info*, i32, i32 }
%struct.channel_info = type { i8*, i8* }

@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@SUPPORT_RATE_OFDM = common dso_local global i32 0, align 4
@rf_vals_noseq = common dso_local global i32 0, align 4
@rf_vals_seq = common dso_local global i32 0, align 4
@RF5225 = common dso_local global i32 0, align 4
@RF5325 = common dso_local global i32 0, align 4
@SUPPORT_BAND_5GHZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_G_START = common dso_local global i32 0, align 4
@MAX_TXPOWER = common dso_local global i8* null, align 8
@EEPROM_TXPOWER_A_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_probe_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_probe_hw_mode(%struct.rt2x00_dev* %0) #0 {
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
  %10 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %11
  store i32 %19, i32* %17, align 4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %24 = call i32 @ieee80211_hw_set(%struct.TYPE_6__* %22, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* @SUPPORTS_PS, align 4
  %29 = call i32 @ieee80211_hw_set(%struct.TYPE_6__* %27, i32 %28)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* @HOST_BROADCAST_PS_BUFFERING, align 4
  %34 = call i32 @ieee80211_hw_set(%struct.TYPE_6__* %32, i32 %33)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* @SIGNAL_DBM, align 4
  %39 = call i32 @ieee80211_hw_set(%struct.TYPE_6__* %37, i32 %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SET_IEEE80211_DEV(%struct.TYPE_6__* %42, i32 %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %52 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %50, i32 %51)
  %53 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_6__* %49, i8* %52)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 7, i32* %61, align 4
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @SUPPORT_BAND_2GHZ, align 4
  %67 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %68 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %70 = load i32, i32* @SUPPORT_RATE_OFDM, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %73 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = call i32 @rt2x00_has_cap_rf_sequence(%struct.rt2x00_dev* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %1
  %78 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %79 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %78, i32 0, i32 1
  store i32 14, i32* %79, align 4
  %80 = load i32, i32* @rf_vals_noseq, align 4
  %81 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %82 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  br label %89

83:                                               ; preds = %1
  %84 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %85 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %84, i32 0, i32 1
  store i32 14, i32* %85, align 4
  %86 = load i32, i32* @rf_vals_seq, align 4
  %87 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %88 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %91 = load i32, i32* @RF5225, align 4
  %92 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %96 = load i32, i32* @RF5325, align 4
  %97 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94, %89
  %100 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %101 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %102 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @rf_vals_seq, align 4
  %106 = call i32 @ARRAY_SIZE(i32 %105)
  %107 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %108 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %99, %94
  %110 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %111 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call %struct.channel_info* @kcalloc(i32 %112, i32 16, i32 %113)
  store %struct.channel_info* %114, %struct.channel_info** %5, align 8
  %115 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %116 = icmp ne %struct.channel_info* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %190

120:                                              ; preds = %109
  %121 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %122 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %123 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %122, i32 0, i32 2
  store %struct.channel_info* %121, %struct.channel_info** %123, align 8
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %125 = load i32, i32* @EEPROM_TXPOWER_G_START, align 4
  %126 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %124, i32 %125)
  store i8* %126, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %148, %120
  %128 = load i32, i32* %7, align 4
  %129 = icmp ult i32 %128, 14
  br i1 %129, label %130, label %151

130:                                              ; preds = %127
  %131 = load i8*, i8** @MAX_TXPOWER, align 8
  %132 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %132, i64 %134
  %136 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %135, i32 0, i32 1
  store i8* %131, i8** %136, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* %7, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = call i8* @TXPOWER_FROM_DEV(i8 signext %141)
  %143 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %143, i64 %145
  %147 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %146, i32 0, i32 0
  store i8* %142, i8** %147, align 8
  br label %148

148:                                              ; preds = %130
  %149 = load i32, i32* %7, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %127

151:                                              ; preds = %127
  %152 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %153 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 14
  br i1 %155, label %156, label %189

156:                                              ; preds = %151
  %157 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %158 = load i32, i32* @EEPROM_TXPOWER_A_START, align 4
  %159 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %157, i32 %158)
  store i8* %159, i8** %6, align 8
  store i32 14, i32* %7, align 4
  br label %160

160:                                              ; preds = %185, %156
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %163 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ult i32 %161, %164
  br i1 %165, label %166, label %188

166:                                              ; preds = %160
  %167 = load i8*, i8** @MAX_TXPOWER, align 8
  %168 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %168, i64 %170
  %172 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %171, i32 0, i32 1
  store i8* %167, i8** %172, align 8
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sub i32 %174, 14
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = call i8* @TXPOWER_FROM_DEV(i8 signext %178)
  %180 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %181 = load i32, i32* %7, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %180, i64 %182
  %184 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %183, i32 0, i32 0
  store i8* %179, i8** %184, align 8
  br label %185

185:                                              ; preds = %166
  %186 = load i32, i32* %7, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %160

188:                                              ; preds = %160
  br label %189

189:                                              ; preds = %188, %151
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %117
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @ieee80211_hw_set(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_has_cap_rf_sequence(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.channel_info* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @TXPOWER_FROM_DEV(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
