; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_ptk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_ptk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i64*, i8*, i8* }
%struct.wilc_ap_wpa_ptk = type { i32*, i64, i32, i64 }
%struct.wilc_sta_wpa_ptk = type { i32*, i64, i32, i64 }

@WILC_RX_MIC_KEY_LEN = common dso_local global i64 0, align 8
@WILC_TX_MIC_KEY_LEN = common dso_local global i64 0, align 8
@WILC_AP_MODE = common dso_local global i64 0, align 8
@WID_11I_MODE = common dso_local global i8* null, align 8
@WID_CHAR = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WID_ADD_PTK = common dso_local global i8* null, align 8
@WID_STR = common dso_local global i8* null, align 8
@WILC_SET_CFG = common dso_local global i32 0, align 4
@WILC_STATION_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_add_ptk(%struct.wilc_vif* %0, i64* %1, i64 %2, i64* %3, i64* %4, i64* %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.wilc_vif*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca [2 x %struct.wid], align 16
  %23 = alloca %struct.wilc_ap_wpa_ptk*, align 8
  %24 = alloca %struct.wid, align 8
  %25 = alloca %struct.wilc_sta_wpa_ptk*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %11, align 8
  store i64* %1, i64** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64* %3, i64** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @WILC_RX_MIC_KEY_LEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @WILC_TX_MIC_KEY_LEN, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %21, align 8
  %31 = load i64, i64* %17, align 8
  %32 = load i64, i64* @WILC_AP_MODE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %124

34:                                               ; preds = %9
  %35 = load i8*, i8** @WID_11I_MODE, align 8
  %36 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 0
  %37 = getelementptr inbounds %struct.wid, %struct.wid* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @WID_CHAR, align 8
  %39 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 0
  %40 = getelementptr inbounds %struct.wid, %struct.wid* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 16
  %41 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 0
  %42 = getelementptr inbounds %struct.wid, %struct.wid* %41, i32 0, i32 0
  store i32 1, i32* %42, align 16
  %43 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 0
  %44 = getelementptr inbounds %struct.wid, %struct.wid* %43, i32 0, i32 1
  store i64* %18, i64** %44, align 8
  %45 = load i64, i64* %21, align 8
  %46 = add i64 32, %45
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.wilc_sta_wpa_ptk* @kzalloc(i64 %46, i32 %47)
  %49 = bitcast %struct.wilc_sta_wpa_ptk* %48 to %struct.wilc_ap_wpa_ptk*
  store %struct.wilc_ap_wpa_ptk* %49, %struct.wilc_ap_wpa_ptk** %23, align 8
  %50 = load %struct.wilc_ap_wpa_ptk*, %struct.wilc_ap_wpa_ptk** %23, align 8
  %51 = icmp ne %struct.wilc_ap_wpa_ptk* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %34
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %199

55:                                               ; preds = %34
  %56 = load %struct.wilc_ap_wpa_ptk*, %struct.wilc_ap_wpa_ptk** %23, align 8
  %57 = getelementptr inbounds %struct.wilc_ap_wpa_ptk, %struct.wilc_ap_wpa_ptk* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i64*, i64** %14, align 8
  %60 = call i32 @ether_addr_copy(i32 %58, i64* %59)
  %61 = load i64, i64* %19, align 8
  %62 = load %struct.wilc_ap_wpa_ptk*, %struct.wilc_ap_wpa_ptk** %23, align 8
  %63 = getelementptr inbounds %struct.wilc_ap_wpa_ptk, %struct.wilc_ap_wpa_ptk* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %21, align 8
  %65 = load %struct.wilc_ap_wpa_ptk*, %struct.wilc_ap_wpa_ptk** %23, align 8
  %66 = getelementptr inbounds %struct.wilc_ap_wpa_ptk, %struct.wilc_ap_wpa_ptk* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.wilc_ap_wpa_ptk*, %struct.wilc_ap_wpa_ptk** %23, align 8
  %68 = getelementptr inbounds %struct.wilc_ap_wpa_ptk, %struct.wilc_ap_wpa_ptk* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i64*, i64** %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @memcpy(i32* %70, i64* %71, i64 %72)
  %74 = load i64*, i64** %15, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %55
  %77 = load %struct.wilc_ap_wpa_ptk*, %struct.wilc_ap_wpa_ptk** %23, align 8
  %78 = getelementptr inbounds %struct.wilc_ap_wpa_ptk, %struct.wilc_ap_wpa_ptk* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i64*, i64** %15, align 8
  %83 = load i64, i64* @WILC_RX_MIC_KEY_LEN, align 8
  %84 = call i32 @memcpy(i32* %81, i64* %82, i64 %83)
  br label %85

85:                                               ; preds = %76, %55
  %86 = load i64*, i64** %16, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load %struct.wilc_ap_wpa_ptk*, %struct.wilc_ap_wpa_ptk** %23, align 8
  %90 = getelementptr inbounds %struct.wilc_ap_wpa_ptk, %struct.wilc_ap_wpa_ptk* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @WILC_RX_MIC_KEY_LEN, align 8
  %94 = add nsw i64 %92, %93
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i64*, i64** %16, align 8
  %97 = load i64, i64* @WILC_TX_MIC_KEY_LEN, align 8
  %98 = call i32 @memcpy(i32* %95, i64* %96, i64 %97)
  br label %99

99:                                               ; preds = %88, %85
  %100 = load i8*, i8** @WID_ADD_PTK, align 8
  %101 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 1
  %102 = getelementptr inbounds %struct.wid, %struct.wid* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @WID_STR, align 8
  %104 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 1
  %105 = getelementptr inbounds %struct.wid, %struct.wid* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 16
  %106 = load i64, i64* %21, align 8
  %107 = add i64 32, %106
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 1
  %110 = getelementptr inbounds %struct.wid, %struct.wid* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 16
  %111 = load %struct.wilc_ap_wpa_ptk*, %struct.wilc_ap_wpa_ptk** %23, align 8
  %112 = bitcast %struct.wilc_ap_wpa_ptk* %111 to i64*
  %113 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 1
  %114 = getelementptr inbounds %struct.wid, %struct.wid* %113, i32 0, i32 1
  store i64* %112, i64** %114, align 8
  %115 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %116 = load i32, i32* @WILC_SET_CFG, align 4
  %117 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 0
  %118 = getelementptr inbounds [2 x %struct.wid], [2 x %struct.wid]* %22, i64 0, i64 0
  %119 = call i32 @ARRAY_SIZE(%struct.wid* %118)
  %120 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %115, i32 %116, %struct.wid* %117, i32 %119)
  store i32 %120, i32* %20, align 4
  %121 = load %struct.wilc_ap_wpa_ptk*, %struct.wilc_ap_wpa_ptk** %23, align 8
  %122 = bitcast %struct.wilc_ap_wpa_ptk* %121 to %struct.wilc_sta_wpa_ptk*
  %123 = call i32 @kfree(%struct.wilc_sta_wpa_ptk* %122)
  br label %197

124:                                              ; preds = %9
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* @WILC_STATION_MODE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %196

128:                                              ; preds = %124
  %129 = load i64, i64* %21, align 8
  %130 = add i64 32, %129
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call %struct.wilc_sta_wpa_ptk* @kzalloc(i64 %130, i32 %131)
  store %struct.wilc_sta_wpa_ptk* %132, %struct.wilc_sta_wpa_ptk** %25, align 8
  %133 = load %struct.wilc_sta_wpa_ptk*, %struct.wilc_sta_wpa_ptk** %25, align 8
  %134 = icmp ne %struct.wilc_sta_wpa_ptk* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %199

138:                                              ; preds = %128
  %139 = load %struct.wilc_sta_wpa_ptk*, %struct.wilc_sta_wpa_ptk** %25, align 8
  %140 = getelementptr inbounds %struct.wilc_sta_wpa_ptk, %struct.wilc_sta_wpa_ptk* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i64*, i64** %14, align 8
  %143 = call i32 @ether_addr_copy(i32 %141, i64* %142)
  %144 = load i64, i64* %21, align 8
  %145 = load %struct.wilc_sta_wpa_ptk*, %struct.wilc_sta_wpa_ptk** %25, align 8
  %146 = getelementptr inbounds %struct.wilc_sta_wpa_ptk, %struct.wilc_sta_wpa_ptk* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.wilc_sta_wpa_ptk*, %struct.wilc_sta_wpa_ptk** %25, align 8
  %148 = getelementptr inbounds %struct.wilc_sta_wpa_ptk, %struct.wilc_sta_wpa_ptk* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i64*, i64** %12, align 8
  %152 = load i64, i64* %13, align 8
  %153 = call i32 @memcpy(i32* %150, i64* %151, i64 %152)
  %154 = load i64*, i64** %15, align 8
  %155 = icmp ne i64* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %138
  %157 = load %struct.wilc_sta_wpa_ptk*, %struct.wilc_sta_wpa_ptk** %25, align 8
  %158 = getelementptr inbounds %struct.wilc_sta_wpa_ptk, %struct.wilc_sta_wpa_ptk* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %13, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i64*, i64** %15, align 8
  %163 = load i64, i64* @WILC_RX_MIC_KEY_LEN, align 8
  %164 = call i32 @memcpy(i32* %161, i64* %162, i64 %163)
  br label %165

165:                                              ; preds = %156, %138
  %166 = load i64*, i64** %16, align 8
  %167 = icmp ne i64* %166, null
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = load %struct.wilc_sta_wpa_ptk*, %struct.wilc_sta_wpa_ptk** %25, align 8
  %170 = getelementptr inbounds %struct.wilc_sta_wpa_ptk, %struct.wilc_sta_wpa_ptk* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %13, align 8
  %173 = load i64, i64* @WILC_RX_MIC_KEY_LEN, align 8
  %174 = add nsw i64 %172, %173
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i64*, i64** %16, align 8
  %177 = load i64, i64* @WILC_TX_MIC_KEY_LEN, align 8
  %178 = call i32 @memcpy(i32* %175, i64* %176, i64 %177)
  br label %179

179:                                              ; preds = %168, %165
  %180 = load i8*, i8** @WID_ADD_PTK, align 8
  %181 = getelementptr inbounds %struct.wid, %struct.wid* %24, i32 0, i32 3
  store i8* %180, i8** %181, align 8
  %182 = load i8*, i8** @WID_STR, align 8
  %183 = getelementptr inbounds %struct.wid, %struct.wid* %24, i32 0, i32 2
  store i8* %182, i8** %183, align 8
  %184 = load i64, i64* %21, align 8
  %185 = add i64 32, %184
  %186 = trunc i64 %185 to i32
  %187 = getelementptr inbounds %struct.wid, %struct.wid* %24, i32 0, i32 0
  store i32 %186, i32* %187, align 8
  %188 = load %struct.wilc_sta_wpa_ptk*, %struct.wilc_sta_wpa_ptk** %25, align 8
  %189 = bitcast %struct.wilc_sta_wpa_ptk* %188 to i64*
  %190 = getelementptr inbounds %struct.wid, %struct.wid* %24, i32 0, i32 1
  store i64* %189, i64** %190, align 8
  %191 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %192 = load i32, i32* @WILC_SET_CFG, align 4
  %193 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %191, i32 %192, %struct.wid* %24, i32 1)
  store i32 %193, i32* %20, align 4
  %194 = load %struct.wilc_sta_wpa_ptk*, %struct.wilc_sta_wpa_ptk** %25, align 8
  %195 = call i32 @kfree(%struct.wilc_sta_wpa_ptk* %194)
  br label %196

196:                                              ; preds = %179, %124
  br label %197

197:                                              ; preds = %196, %99
  %198 = load i32, i32* %20, align 4
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %197, %135, %52
  %200 = load i32, i32* %10, align 4
  ret i32 %200
}

declare dso_local %struct.wilc_sta_wpa_ptk* @kzalloc(i64, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i64*) #1

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.wid*) #1

declare dso_local i32 @kfree(%struct.wilc_sta_wpa_ptk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
