; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_rtw_hal_get_def_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_rtw_hal_get_def_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.sta_priv, %struct.hal_data_8188e* }
%struct.mlme_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sta_priv = type { i32 }
%struct.hal_data_8188e = type { i64, i64, i64, %struct.odm_dm_struct, i32 }
%struct.odm_dm_struct = type { i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.sta_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@DRVINFO_SZ = common dso_local global i64 0, align 8
@MAX_RECVBUF_SZ = common dso_local global i64 0, align 8
@RXDESC_SIZE = common dso_local global i64 0, align 8
@MAX_AMPDU_FACTOR_64K = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"============ RA status check ===================\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"Mac_id:%d , RateID = %d, RAUseRate = 0x%08x, RateSGI = %d, DecisionRate = 0x%02x ,PTStage = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"dm_ocm->DebugComponents = 0x%llx\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_hal_get_def_var(%struct.adapter* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hal_data_8188e*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlme_priv*, align 8
  %10 = alloca %struct.sta_priv*, align 8
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.odm_dm_struct*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  %19 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %18, align 8
  store %struct.hal_data_8188e* %19, %struct.hal_data_8188e** %7, align 8
  %20 = load i64, i64* @_SUCCESS, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %188 [
    i32 131, label %22
    i32 137, label %44
    i32 142, label %54
    i32 138, label %60
    i32 136, label %64
    i32 132, label %68
    i32 141, label %74
    i32 134, label %81
    i32 133, label %91
    i32 135, label %101
    i32 128, label %111
    i32 129, label %115
    i32 130, label %169
    i32 140, label %176
    i32 139, label %182
  ]

22:                                               ; preds = %3
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  store %struct.mlme_priv* %24, %struct.mlme_priv** %9, align 8
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 1
  store %struct.sta_priv* %26, %struct.sta_priv** %10, align 8
  %27 = load %struct.sta_priv*, %struct.sta_priv** %10, align 8
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %27, i32 %32)
  store %struct.sta_info* %33, %struct.sta_info** %11, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %35 = icmp ne %struct.sta_info* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %22
  br label %190

44:                                               ; preds = %3
  %45 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %46 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 1
  %51 = sext i32 %50 to i64
  %52 = load i8*, i8** %6, align 8
  %53 = bitcast i8* %52 to i64*
  store i64 %51, i64* %53, align 8
  br label %190

54:                                               ; preds = %3
  %55 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %56 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = bitcast i8* %58 to i64*
  store i64 %57, i64* %59, align 8
  br label %190

60:                                               ; preds = %3
  %61 = load i64, i64* @DRVINFO_SZ, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = bitcast i8* %62 to i64*
  store i64 %61, i64* %63, align 8
  br label %190

64:                                               ; preds = %3
  %65 = load i64, i64* @MAX_RECVBUF_SZ, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = bitcast i8* %66 to i64*
  store i64 %65, i64* %67, align 8
  br label %190

68:                                               ; preds = %3
  %69 = load i64, i64* @RXDESC_SIZE, align 8
  %70 = load i64, i64* @DRVINFO_SZ, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i8*, i8** %6, align 8
  %73 = bitcast i8* %72 to i64*
  store i64 %71, i64* %73, align 8
  br label %190

74:                                               ; preds = %3
  %75 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %76 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = bitcast i8* %79 to i64*
  store i64 %78, i64* %80, align 8
  br label %190

81:                                               ; preds = %3
  %82 = load i8*, i8** %6, align 8
  %83 = bitcast i8* %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  %85 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %86 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %85, i32 0, i32 3
  %87 = load i64, i64* %12, align 8
  %88 = call i64 @ODM_RA_GetDecisionRate_8188E(%struct.odm_dm_struct* %86, i64 %87)
  %89 = load i8*, i8** %6, align 8
  %90 = bitcast i8* %89 to i64*
  store i64 %88, i64* %90, align 8
  br label %190

91:                                               ; preds = %3
  %92 = load i8*, i8** %6, align 8
  %93 = bitcast i8* %92 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %13, align 8
  %95 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %96 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %95, i32 0, i32 3
  %97 = load i64, i64* %13, align 8
  %98 = call i64 @ODM_RA_GetShortGI_8188E(%struct.odm_dm_struct* %96, i64 %97)
  %99 = load i8*, i8** %6, align 8
  %100 = bitcast i8* %99 to i64*
  store i64 %98, i64* %100, align 8
  br label %190

101:                                              ; preds = %3
  %102 = load i8*, i8** %6, align 8
  %103 = bitcast i8* %102 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %14, align 8
  %105 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %106 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %105, i32 0, i32 3
  %107 = load i64, i64* %14, align 8
  %108 = call i64 @ODM_RA_GetHwPwrStatus_8188E(%struct.odm_dm_struct* %106, i64 %107)
  %109 = load i8*, i8** %6, align 8
  %110 = bitcast i8* %109 to i64*
  store i64 %108, i64* %110, align 8
  br label %190

111:                                              ; preds = %3
  %112 = load i64, i64* @MAX_AMPDU_FACTOR_64K, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = bitcast i8* %113 to i64*
  store i64 %112, i64* %114, align 8
  br label %190

115:                                              ; preds = %3
  %116 = load i8*, i8** %6, align 8
  %117 = bitcast i8* %116 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %15, align 8
  %119 = load %struct.adapter*, %struct.adapter** %4, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 0
  %121 = load i32, i32* @_FW_LINKED, align 4
  %122 = call i32 @check_fwstate(%struct.mlme_priv* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %168

124:                                              ; preds = %115
  %125 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %126 = load i64, i64* %15, align 8
  %127 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %128 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %136 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load i64, i64* %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %144 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %144, i32 0, i32 1
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i64, i64* %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %152 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load i64, i64* %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %160 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %160, i32 0, i32 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load i64, i64* %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i64 %126, i32 %134, i32 %142, i32 %150, i32 %158, i32 %166)
  br label %168

168:                                              ; preds = %124, %115
  br label %190

169:                                              ; preds = %3
  %170 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %171 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %170, i32 0, i32 3
  store %struct.odm_dm_struct* %171, %struct.odm_dm_struct** %16, align 8
  %172 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %16, align 8
  %173 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  br label %190

176:                                              ; preds = %3
  %177 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %178 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = bitcast i8* %180 to i64*
  store i64 %179, i64* %181, align 8
  br label %190

182:                                              ; preds = %3
  %183 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %184 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i8*, i8** %6, align 8
  %187 = bitcast i8* %186 to i64*
  store i64 %185, i64* %187, align 8
  br label %190

188:                                              ; preds = %3
  %189 = load i64, i64* @_FAIL, align 8
  store i64 %189, i64* %8, align 8
  br label %190

190:                                              ; preds = %188, %182, %176, %169, %168, %111, %101, %91, %81, %74, %68, %64, %60, %54, %44, %43
  %191 = load i64, i64* %8, align 8
  ret i64 %191
}

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i64 @ODM_RA_GetDecisionRate_8188E(%struct.odm_dm_struct*, i64) #1

declare dso_local i64 @ODM_RA_GetShortGI_8188E(%struct.odm_dm_struct*, i64) #1

declare dso_local i64 @ODM_RA_GetHwPwrStatus_8188E(%struct.odm_dm_struct*, i64) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @DBG_88E(i8*, ...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
