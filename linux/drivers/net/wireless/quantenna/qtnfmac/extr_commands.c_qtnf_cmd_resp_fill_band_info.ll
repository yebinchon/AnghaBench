; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_fill_band_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_fill_band_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel*, %struct.ieee80211_channel, %struct.ieee80211_channel, i32 }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32 }
%struct.qlink_resp_band_info_get = type { i32, i64 }
%struct.qlink_tlv_hdr = type { i64, i32, i32 }
%struct.qlink_channel = type { i32, i32, i32, i64, i64, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"malformed TLV 0x%.2X; LEN: %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid channel TLV len %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"too many channel TLVs\0A\00", align 1
@QLINK_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@QLINK_CHAN_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@QLINK_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@QLINK_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@QLINK_CHAN_NO_OFDM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_OFDM = common dso_local global i32 0, align 4
@QLINK_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@QLINK_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@QLINK_CHAN_INDOOR_ONLY = common dso_local global i32 0, align 4
@IEEE80211_CHAN_INDOOR_ONLY = common dso_local global i32 0, align 4
@QLINK_CHAN_IR_CONCURRENT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_IR_CONCURRENT = common dso_local global i32 0, align 4
@QLINK_CHAN_NO_20MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_20MHZ = common dso_local global i32 0, align 4
@QLINK_CHAN_NO_10MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_10MHZ = common dso_local global i32 0, align 4
@QLINK_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@QLINK_DFS_USABLE = common dso_local global i32 0, align 4
@NL80211_DFS_USABLE = common dso_local global i32 0, align 4
@QLINK_DFS_AVAILABLE = common dso_local global i32 0, align 4
@NL80211_DFS_AVAILABLE = common dso_local global i32 0, align 4
@NL80211_DFS_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"chan=%d flags=%#x max_pow=%d max_reg_pow=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"bad HTCAP TLV len %zu\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"bad VHTCAP TLV len %zu\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"unknown TLV type: %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"malformed TLV buf; bytes left: %zu\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"channel count mismatch: reported=%d, parsed=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_supported_band*, %struct.qlink_resp_band_info_get*, i64)* @qtnf_cmd_resp_fill_band_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_cmd_resp_fill_band_info(%struct.ieee80211_supported_band* %0, %struct.qlink_resp_band_info_get* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.qlink_resp_band_info_get*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.qlink_tlv_hdr*, align 8
  %12 = alloca %struct.qlink_channel*, align 8
  %13 = alloca %struct.ieee80211_channel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %5, align 8
  store %struct.qlink_resp_band_info_get* %1, %struct.qlink_resp_band_info_get** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %16, i32 0, i32 3
  %18 = call i32 @memset(%struct.ieee80211_channel* %17, i32 0, i32 64)
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %19, i32 0, i32 2
  %21 = call i32 @memset(%struct.ieee80211_channel* %20, i32 0, i32 64)
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %22, i32 0, i32 1
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  %25 = icmp ne %struct.ieee80211_channel* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %3
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.qlink_resp_band_info_get*, %struct.qlink_resp_band_info_get** %6, align 8
  %31 = getelementptr inbounds %struct.qlink_resp_band_info_get, %struct.qlink_resp_band_info_get* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %35, i32 0, i32 1
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %36, align 8
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 64, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(%struct.ieee80211_channel* %37, i32 0, i32 %43)
  br label %54

45:                                               ; preds = %26
  %46 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %46, i32 0, i32 1
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %47, align 8
  %49 = call i32 @kfree(%struct.ieee80211_channel* %48)
  %50 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %52, i32 0, i32 1
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %53, align 8
  br label %54

54:                                               ; preds = %45, %34
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.qlink_resp_band_info_get*, %struct.qlink_resp_band_info_get** %6, align 8
  %57 = getelementptr inbounds %struct.qlink_resp_band_info_get, %struct.qlink_resp_band_info_get* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %449

66:                                               ; preds = %55
  %67 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %67, i32 0, i32 1
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %68, align 8
  %70 = icmp ne %struct.ieee80211_channel* %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.ieee80211_channel* @kcalloc(i32 %74, i32 64, i32 %75)
  %77 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %77, i32 0, i32 1
  store %struct.ieee80211_channel* %76, %struct.ieee80211_channel** %78, align 8
  br label %79

79:                                               ; preds = %71, %66
  %80 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %80, i32 0, i32 1
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %81, align 8
  %83 = icmp ne %struct.ieee80211_channel* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %449

89:                                               ; preds = %79
  %90 = load %struct.qlink_resp_band_info_get*, %struct.qlink_resp_band_info_get** %6, align 8
  %91 = getelementptr inbounds %struct.qlink_resp_band_info_get, %struct.qlink_resp_band_info_get* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.qlink_tlv_hdr*
  store %struct.qlink_tlv_hdr* %93, %struct.qlink_tlv_hdr** %11, align 8
  br label %94

94:                                               ; preds = %409, %89
  %95 = load i64, i64* %7, align 8
  %96 = icmp uge i64 %95, 16
  br i1 %96, label %97, label %419

97:                                               ; preds = %94
  %98 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %11, align 8
  %99 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le16_to_cpu(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %8, align 4
  %103 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %11, align 8
  %104 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @le16_to_cpu(i32 %105)
  %107 = ptrtoint i8* %106 to i64
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 16
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %97
  %114 = load i32, i32* %8, align 4
  %115 = load i64, i64* %9, align 8
  %116 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %114, i64 %115)
  br label %438

117:                                              ; preds = %97
  %118 = load i32, i32* %8, align 4
  switch i32 %118, label %406 [
    i32 130, label %119
    i32 129, label %374
    i32 128, label %390
  ]

119:                                              ; preds = %117
  %120 = load i64, i64* %10, align 8
  %121 = icmp ne i64 %120, 56
  %122 = zext i1 %121 to i32
  %123 = call i32 @unlikely(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i64, i64* %9, align 8
  %127 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %126)
  br label %438

128:                                              ; preds = %119
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %131 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %438

136:                                              ; preds = %128
  %137 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %11, align 8
  %138 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to %struct.qlink_channel*
  store %struct.qlink_channel* %140, %struct.qlink_channel** %12, align 8
  %141 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %142 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %141, i32 0, i32 1
  %143 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %14, align 4
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %143, i64 %146
  store %struct.ieee80211_channel* %147, %struct.ieee80211_channel** %13, align 8
  %148 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %149 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = call i8* @le32_to_cpu(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %15, align 4
  %153 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %154 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @le16_to_cpu(i32 %155)
  %157 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %158 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %160 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %163 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %162, i32 0, i32 10
  store i32 %161, i32* %163, align 8
  %164 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %165 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @le16_to_cpu(i32 %166)
  %168 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %169 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %168, i32 0, i32 9
  store i8* %167, i8** %169, align 8
  %170 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %171 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %175 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %177 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %181 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %183 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %187 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %189 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %192 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %191, i32 0, i32 8
  store i32 %190, i32* %192, align 8
  %193 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %194 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @le32_to_cpu(i32 %195)
  %197 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %198 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %197, i32 0, i32 7
  store i8* %196, i8** %198, align 8
  %199 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %200 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %199, i32 0, i32 3
  store i32 0, i32* %200, align 4
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* @QLINK_CHAN_DISABLED, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %136
  %206 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %207 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %208 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %205, %136
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* @QLINK_CHAN_NO_IR, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %218 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %219 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %216, %211
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* @QLINK_CHAN_NO_HT40PLUS, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %229 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %230 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %227, %222
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* @QLINK_CHAN_NO_HT40MINUS, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %240 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %241 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %238, %233
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* @QLINK_CHAN_NO_OFDM, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load i32, i32* @IEEE80211_CHAN_NO_OFDM, align 4
  %251 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %252 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %249, %244
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* @QLINK_CHAN_NO_80MHZ, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %262 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %263 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %260, %255
  %267 = load i32, i32* %15, align 4
  %268 = load i32, i32* @QLINK_CHAN_NO_160MHZ, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %266
  %272 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %273 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %274 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %271, %266
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* @QLINK_CHAN_INDOOR_ONLY, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = load i32, i32* @IEEE80211_CHAN_INDOOR_ONLY, align 4
  %284 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %285 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %282, %277
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* @QLINK_CHAN_IR_CONCURRENT, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %288
  %294 = load i32, i32* @IEEE80211_CHAN_IR_CONCURRENT, align 4
  %295 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %296 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %293, %288
  %300 = load i32, i32* %15, align 4
  %301 = load i32, i32* @QLINK_CHAN_NO_20MHZ, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %299
  %305 = load i32, i32* @IEEE80211_CHAN_NO_20MHZ, align 4
  %306 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %307 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %304, %299
  %311 = load i32, i32* %15, align 4
  %312 = load i32, i32* @QLINK_CHAN_NO_10MHZ, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load i32, i32* @IEEE80211_CHAN_NO_10MHZ, align 4
  %317 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %318 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 4
  br label %321

321:                                              ; preds = %315, %310
  %322 = load i32, i32* %15, align 4
  %323 = load i32, i32* @QLINK_CHAN_RADAR, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %360

326:                                              ; preds = %321
  %327 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %328 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %329 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load i32, i32* @jiffies, align 4
  %333 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %334 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %333, i32 0, i32 6
  store i32 %332, i32* %334, align 4
  %335 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %336 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @QLINK_DFS_USABLE, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %326
  %341 = load i32, i32* @NL80211_DFS_USABLE, align 4
  %342 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %343 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %342, i32 0, i32 5
  store i32 %341, i32* %343, align 8
  br label %359

344:                                              ; preds = %326
  %345 = load %struct.qlink_channel*, %struct.qlink_channel** %12, align 8
  %346 = getelementptr inbounds %struct.qlink_channel, %struct.qlink_channel* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @QLINK_DFS_AVAILABLE, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %344
  %351 = load i32, i32* @NL80211_DFS_AVAILABLE, align 4
  %352 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %353 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %352, i32 0, i32 5
  store i32 %351, i32* %353, align 8
  br label %358

354:                                              ; preds = %344
  %355 = load i32, i32* @NL80211_DFS_UNAVAILABLE, align 4
  %356 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %357 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %356, i32 0, i32 5
  store i32 %355, i32* %357, align 8
  br label %358

358:                                              ; preds = %354, %350
  br label %359

359:                                              ; preds = %358, %340
  br label %360

360:                                              ; preds = %359, %321
  %361 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %362 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %361, i32 0, i32 4
  %363 = load i8*, i8** %362, align 8
  %364 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %365 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %368 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %371 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %363, i32 %366, i32 %369, i32 %372)
  br label %409

374:                                              ; preds = %117
  %375 = load i64, i64* %10, align 8
  %376 = icmp ne i64 %375, 4
  %377 = zext i1 %376 to i32
  %378 = call i32 @unlikely(i32 %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %374
  %381 = load i64, i64* %10, align 8
  %382 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %381)
  br label %438

383:                                              ; preds = %374
  %384 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %11, align 8
  %385 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %388 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %387, i32 0, i32 3
  %389 = call i32 @qtnf_cmd_resp_band_fill_htcap(i64 %386, %struct.ieee80211_channel* %388)
  br label %409

390:                                              ; preds = %117
  %391 = load i64, i64* %10, align 8
  %392 = icmp ne i64 %391, 4
  %393 = zext i1 %392 to i32
  %394 = call i32 @unlikely(i32 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %390
  %397 = load i64, i64* %10, align 8
  %398 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %397)
  br label %438

399:                                              ; preds = %390
  %400 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %11, align 8
  %401 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %404 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %403, i32 0, i32 2
  %405 = call i32 @qtnf_cmd_resp_band_fill_vhtcap(i64 %402, %struct.ieee80211_channel* %404)
  br label %409

406:                                              ; preds = %117
  %407 = load i32, i32* %8, align 4
  %408 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %407)
  br label %409

409:                                              ; preds = %406, %399, %383, %360
  %410 = load i64, i64* %9, align 8
  %411 = load i64, i64* %7, align 8
  %412 = sub i64 %411, %410
  store i64 %412, i64* %7, align 8
  %413 = load %struct.qlink_tlv_hdr*, %struct.qlink_tlv_hdr** %11, align 8
  %414 = getelementptr inbounds %struct.qlink_tlv_hdr, %struct.qlink_tlv_hdr* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* %10, align 8
  %417 = add i64 %415, %416
  %418 = inttoptr i64 %417 to %struct.qlink_tlv_hdr*
  store %struct.qlink_tlv_hdr* %418, %struct.qlink_tlv_hdr** %11, align 8
  br label %94

419:                                              ; preds = %94
  %420 = load i64, i64* %7, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %419
  %423 = load i64, i64* %7, align 8
  %424 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %423)
  br label %438

425:                                              ; preds = %419
  %426 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %427 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* %14, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %437

431:                                              ; preds = %425
  %432 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %433 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* %14, align 4
  %436 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %434, i32 %435)
  br label %438

437:                                              ; preds = %425
  store i32 0, i32* %4, align 4
  br label %449

438:                                              ; preds = %431, %422, %396, %380, %134, %125, %113
  %439 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %440 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %439, i32 0, i32 1
  %441 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %440, align 8
  %442 = call i32 @kfree(%struct.ieee80211_channel* %441)
  %443 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %444 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %443, i32 0, i32 1
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %444, align 8
  %445 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %446 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %445, i32 0, i32 0
  store i32 0, i32* %446, align 8
  %447 = load i32, i32* @EINVAL, align 4
  %448 = sub nsw i32 0, %447
  store i32 %448, i32* %4, align 4
  br label %449

449:                                              ; preds = %438, %437, %84, %65
  %450 = load i32, i32* %4, align 4
  ret i32 %450
}

declare dso_local i32 @memset(%struct.ieee80211_channel*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_channel*) #1

declare dso_local %struct.ieee80211_channel* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @qtnf_cmd_resp_band_fill_htcap(i64, %struct.ieee80211_channel*) #1

declare dso_local i32 @qtnf_cmd_resp_band_fill_vhtcap(i64, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
