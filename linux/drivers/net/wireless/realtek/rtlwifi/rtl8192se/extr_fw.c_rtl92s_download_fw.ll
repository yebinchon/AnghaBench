; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c_rtl92s_download_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c_rtl92s_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i64 }
%struct.rtl_hal = type { i64 }
%struct.rt_firmware = type { i32*, i32*, i32, i32*, i32, i8*, %struct.fw_hdr*, i32 }
%struct.fw_hdr = type { i32, i32, %struct.fw_priv, i32, i32, i32 }
%struct.fw_priv = type { i32 }

@RT_8192S_FIRMWARE_HDR_SIZE = common dso_local global i32 0, align 4
@FW_STATUS_INIT = common dso_local global i8* null, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"signature:%x, version:%x, size:%x, imemsize:%x, sram size:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"memory for data image is less than IMEM required\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"memory for data image is less than EMEM required\0A\00", align 1
@FW_STATUS_READY = common dso_local global i32 0, align 4
@RT_8192S_FIRMWARE_HDR_EXCLUDE_PRI_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unexpected Download step!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"fail!\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"rtl8192se: firmware fail!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92s_download_fw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca %struct.rt_firmware*, align 8
  %7 = alloca %struct.fw_hdr*, align 8
  %8 = alloca %struct.fw_priv*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %4, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %5, align 8
  store %struct.rt_firmware* null, %struct.rt_firmware** %6, align 8
  store %struct.fw_priv* null, %struct.fw_priv** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @RT_8192S_FIRMWARE_HDR_SIZE, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** @FW_STATUS_INIT, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %1
  store i32 1, i32* %2, align 4
  br label %209

32:                                               ; preds = %26
  %33 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.rt_firmware*
  store %struct.rt_firmware* %36, %struct.rt_firmware** %6, align 8
  %37 = load i8*, i8** @FW_STATUS_INIT, align 8
  %38 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %39 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %41 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = bitcast i32* %43 to %struct.fw_hdr*
  %45 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %46 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %45, i32 0, i32 6
  store %struct.fw_hdr* %44, %struct.fw_hdr** %46, align 8
  %47 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %48 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %47, i32 0, i32 6
  %49 = load %struct.fw_hdr*, %struct.fw_hdr** %48, align 8
  store %struct.fw_hdr* %49, %struct.fw_hdr** %7, align 8
  %50 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %51 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @byte(i32 %52, i32 0)
  %54 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %55 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %57 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %56, i32 0, i32 6
  %58 = load %struct.fw_hdr*, %struct.fw_hdr** %57, align 8
  %59 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %62 = load i32, i32* @COMP_INIT, align 4
  %63 = load i32, i32* @DBG_LOUD, align 4
  %64 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %68 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %74 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %77 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75, i32 %78)
  %80 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %81 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %32
  %85 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %86 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ugt i64 %88, 8
  br i1 %89, label %90, label %92

90:                                               ; preds = %84, %32
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %208

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %9, align 8
  %97 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %98 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %102 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32* %99, i32* %100, i32 %103)
  %105 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %106 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %109 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %92
  %111 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %112 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ugt i64 %114, 8
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %208

118:                                              ; preds = %110
  %119 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %120 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %9, align 8
  %125 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %126 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %130 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32* %127, i32* %128, i32 %131)
  %133 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %134 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %137 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %118
  %139 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %140 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %139, i32 0, i32 5
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @_rtl92s_firmware_get_nextstatus(i8* %141)
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %201, %138
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @FW_STATUS_READY, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %206

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  switch i32 %148, label %182 [
    i32 128, label %149
    i32 129, label %156
    i32 130, label %163
  ]

149:                                              ; preds = %147
  %150 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %151 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %9, align 8
  %153 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %154 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %10, align 4
  br label %184

156:                                              ; preds = %147
  %157 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %158 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  store i32* %159, i32** %9, align 8
  %160 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %161 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %10, align 4
  br label %184

163:                                              ; preds = %147
  %164 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %165 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %164, i32 0, i32 6
  %166 = load %struct.fw_hdr*, %struct.fw_hdr** %165, align 8
  store %struct.fw_hdr* %166, %struct.fw_hdr** %7, align 8
  %167 = load %struct.fw_hdr*, %struct.fw_hdr** %7, align 8
  %168 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %167, i32 0, i32 2
  store %struct.fw_priv* %168, %struct.fw_priv** %8, align 8
  %169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %170 = load %struct.fw_priv*, %struct.fw_priv** %8, align 8
  %171 = call i32 @_rtl92s_firmwareheader_priveupdate(%struct.ieee80211_hw* %169, %struct.fw_priv* %170)
  %172 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %173 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %172, i32 0, i32 6
  %174 = load %struct.fw_hdr*, %struct.fw_hdr** %173, align 8
  %175 = bitcast %struct.fw_hdr* %174 to i32*
  %176 = load i32, i32* @RT_8192S_FIRMWARE_HDR_EXCLUDE_PRI_SIZE, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32* %178, i32** %9, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @RT_8192S_FIRMWARE_HDR_EXCLUDE_PRI_SIZE, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* %10, align 4
  br label %184

182:                                              ; preds = %147
  %183 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %208

184:                                              ; preds = %163, %156, %149
  %185 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @_rtl92s_firmware_downloadcode(%struct.ieee80211_hw* %185, i32* %186, i32 %187)
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %184
  %192 = call i32 @pr_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %208

193:                                              ; preds = %184
  %194 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @_rtl92s_firmware_checkready(%struct.ieee80211_hw* %194, i32 %195)
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %193
  %200 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %208

201:                                              ; preds = %193
  %202 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %203 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %202, i32 0, i32 5
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @_rtl92s_firmware_get_nextstatus(i8* %204)
  store i32 %205, i32* %12, align 4
  br label %143

206:                                              ; preds = %143
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %2, align 4
  br label %209

208:                                              ; preds = %199, %191, %182, %116, %90
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %208, %206, %31
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @byte(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @_rtl92s_firmware_get_nextstatus(i8*) #1

declare dso_local i32 @_rtl92s_firmwareheader_priveupdate(%struct.ieee80211_hw*, %struct.fw_priv*) #1

declare dso_local i32 @_rtl92s_firmware_downloadcode(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i32 @_rtl92s_firmware_checkready(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
