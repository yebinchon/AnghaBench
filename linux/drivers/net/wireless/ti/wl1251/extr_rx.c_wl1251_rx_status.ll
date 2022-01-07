; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_rx.c_wl1251_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_rx.c_wl1251_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i32, i64 }
%struct.wl1251_rx_descriptor = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32, i64, i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@RX_FLAG_MACTIME_START = common dso_local global i32 0, align 4
@RX_DESC_ENCRYPTION_MASK = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_DESC_DECRYPT_FAIL = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_DESC_MIC_FAIL = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RX_DESC_VALID_FCS = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RATE_1MBPS = common dso_local global i32 0, align 4
@OFDM_RATE_BIT = common dso_local global i32 0, align 4
@SHORT_PREAMBLE_BIT = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*, %struct.wl1251_rx_descriptor*, %struct.ieee80211_rx_status*, i64)* @wl1251_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_rx_status(%struct.wl1251* %0, %struct.wl1251_rx_descriptor* %1, %struct.ieee80211_rx_status* %2, i64 %3) #0 {
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca %struct.wl1251_rx_descriptor*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store %struct.wl1251_rx_descriptor* %1, %struct.wl1251_rx_descriptor** %6, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %12 = call i32 @memset(%struct.ieee80211_rx_status* %11, i32 0, i32 40)
  %13 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %14 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %17 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %22 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %31 = call i32 @wl1251_acx_tsf_info(%struct.wl1251* %30, i32* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %26, %4
  %40 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %41 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  %45 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %46 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %49 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %47, %52
  %54 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %55 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %57 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ieee80211_channel_to_frequency(i32 %58, i32 %61)
  %63 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @RX_FLAG_MACTIME_START, align 4
  %66 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %71 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %120, label %74

74:                                               ; preds = %39
  %75 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %76 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RX_DESC_ENCRYPTION_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %74
  %82 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %83 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %90 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RX_DESC_DECRYPT_FAIL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @likely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %81
  %100 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %101 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %81
  %106 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %107 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RX_DESC_MIC_FAIL, align 4
  %110 = and i32 %108, %109
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %115 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %116 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %105
  br label %120

120:                                              ; preds = %119, %74, %39
  %121 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %122 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RX_DESC_VALID_FCS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %133 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %120
  %138 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %139 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %171 [
    i32 134, label %141
    i32 130, label %144
    i32 137, label %147
    i32 129, label %150
    i32 128, label %153
    i32 136, label %156
    i32 135, label %159
    i32 133, label %162
    i32 132, label %165
    i32 131, label %168
  ]

141:                                              ; preds = %137
  %142 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %143 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  br label %171

144:                                              ; preds = %137
  %145 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %146 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %145, i32 0, i32 1
  store i32 2, i32* %146, align 4
  br label %171

147:                                              ; preds = %137
  %148 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %149 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %148, i32 0, i32 1
  store i32 3, i32* %149, align 4
  br label %171

150:                                              ; preds = %137
  %151 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %152 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %151, i32 0, i32 1
  store i32 4, i32* %152, align 4
  br label %171

153:                                              ; preds = %137
  %154 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %155 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %154, i32 0, i32 1
  store i32 5, i32* %155, align 4
  br label %171

156:                                              ; preds = %137
  %157 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %158 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %157, i32 0, i32 1
  store i32 7, i32* %158, align 4
  br label %171

159:                                              ; preds = %137
  %160 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %161 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %160, i32 0, i32 1
  store i32 8, i32* %161, align 4
  br label %171

162:                                              ; preds = %137
  %163 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %164 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %163, i32 0, i32 1
  store i32 9, i32* %164, align 4
  br label %171

165:                                              ; preds = %137
  %166 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %167 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %166, i32 0, i32 1
  store i32 10, i32* %167, align 4
  br label %171

168:                                              ; preds = %137
  %169 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %170 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %169, i32 0, i32 1
  store i32 11, i32* %170, align 4
  br label %171

171:                                              ; preds = %137, %168, %165, %162, %159, %156, %153, %150, %147, %144, %141
  %172 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %173 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @RATE_1MBPS, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %171
  %178 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %179 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @OFDM_RATE_BIT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %177
  %185 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %186 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %185, i32 0, i32 1
  store i32 0, i32* %186, align 4
  br label %190

187:                                              ; preds = %177
  %188 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %189 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %188, i32 0, i32 1
  store i32 6, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %171
  %192 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %6, align 8
  %193 = getelementptr inbounds %struct.wl1251_rx_descriptor, %struct.wl1251_rx_descriptor* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @SHORT_PREAMBLE_BIT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %200 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %201 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %198, %191
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @wl1251_acx_tsf_info(%struct.wl1251*, i32*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
