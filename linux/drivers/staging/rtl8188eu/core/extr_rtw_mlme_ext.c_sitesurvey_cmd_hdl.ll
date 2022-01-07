; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_sitesurvey_cmd_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_sitesurvey_cmd_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.sitesurvey_parm = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@SCAN_DISABLE = common dso_local global i64 0, align 8
@HW_VAR_CHECK_TXBUF = common dso_local global i32 0, align 4
@SCAN_START = common dso_local global i64 0, align 8
@RTW_SSID_SCAN_AMOUNT = common dso_local global i64 0, align 8
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@RTW_CHANNEL_SCAN_AMOUNT = common dso_local global i32 0, align 4
@SCAN_TXNULL = common dso_local global i64 0, align 8
@H2C_SUCCESS = common dso_local global i32 0, align 4
@DYNAMIC_FUNC_DISABLE = common dso_local global i32 0, align 4
@HW_VAR_INITIAL_GAIN = common dso_local global i32 0, align 4
@_HW_STATE_NOLINK_ = common dso_local global i32 0, align 4
@HW_VAR_MLME_SITESURVEY = common dso_local global i32 0, align 4
@SCAN_PROCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sitesurvey_cmd_hdl(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.sitesurvey_parm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.sitesurvey_parm*
  store %struct.sitesurvey_parm* %15, %struct.sitesurvey_parm** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SCAN_DISABLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %134

22:                                               ; preds = %2
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = load i32, i32* @HW_VAR_CHECK_TXBUF, align 4
  %25 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %23, i32 %24, i32* null)
  %26 = load i64, i64* @SCAN_START, align 8
  %27 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %34 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %90, %22
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @RTW_SSID_SCAN_AMOUNT, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %93

40:                                               ; preds = %36
  %41 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %42 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %40
  %50 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %51 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %59 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %66 = call i32 @memcpy(i32 %57, i32 %64, i32 %65)
  %67 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %68 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %75 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i64 %73, i64* %80, align 8
  br label %89

81:                                               ; preds = %40
  %82 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %83 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %81, %49
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %36

93:                                               ; preds = %36
  %94 = load %struct.adapter*, %struct.adapter** %4, align 8
  %95 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %96 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RTW_CHANNEL_SCAN_AMOUNT, align 4
  %100 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %101 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %104 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rtw_scan_ch_decision(%struct.adapter* %94, i32 %98, i32 %99, i32 %102, i32 %105)
  %107 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %108 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 8
  %110 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %111 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %114 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = load %struct.adapter*, %struct.adapter** %4, align 8
  %117 = call i64 @is_client_associated_to_ap(%struct.adapter* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %93
  %120 = load i64, i64* @SCAN_TXNULL, align 8
  %121 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %122 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  %124 = load %struct.adapter*, %struct.adapter** %4, align 8
  %125 = call i32 @issue_nulldata(%struct.adapter* %124, i32* null, i32 1, i32 3, i32 500)
  store i32 1, i32* %8, align 4
  br label %126

126:                                              ; preds = %119, %93
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %131 = call i32 @set_survey_timer(%struct.mlme_ext_priv* %130, i32 50)
  %132 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %132, i32* %3, align 4
  br label %172

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %2
  %135 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %136 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SCAN_START, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %148, label %141

141:                                              ; preds = %134
  %142 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %143 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SCAN_TXNULL, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %141, %134
  %149 = load %struct.adapter*, %struct.adapter** %4, align 8
  %150 = call i32 @Save_DM_Func_Flag(%struct.adapter* %149)
  %151 = load %struct.adapter*, %struct.adapter** %4, align 8
  %152 = load i32, i32* @DYNAMIC_FUNC_DISABLE, align 4
  %153 = call i32 @Switch_DM_Func(%struct.adapter* %151, i32 %152, i32 0)
  store i64 30, i64* %10, align 8
  %154 = load %struct.adapter*, %struct.adapter** %4, align 8
  %155 = load i32, i32* @HW_VAR_INITIAL_GAIN, align 4
  %156 = bitcast i64* %10 to i32*
  %157 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %154, i32 %155, i32* %156)
  %158 = load %struct.adapter*, %struct.adapter** %4, align 8
  %159 = load i32, i32* @_HW_STATE_NOLINK_, align 4
  %160 = call i32 @Set_MSR(%struct.adapter* %158, i32 %159)
  store i32 1, i32* %9, align 4
  %161 = load %struct.adapter*, %struct.adapter** %4, align 8
  %162 = load i32, i32* @HW_VAR_MLME_SITESURVEY, align 4
  %163 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %161, i32 %162, i32* %9)
  %164 = load i64, i64* @SCAN_PROCESS, align 8
  %165 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %166 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  store i64 %164, i64* %167, align 8
  br label %168

168:                                              ; preds = %148, %141
  %169 = load %struct.adapter*, %struct.adapter** %4, align 8
  %170 = call i32 @site_survey(%struct.adapter* %169)
  %171 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %168, %129
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rtw_scan_ch_decision(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i64 @is_client_associated_to_ap(%struct.adapter*) #1

declare dso_local i32 @issue_nulldata(%struct.adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @set_survey_timer(%struct.mlme_ext_priv*, i32) #1

declare dso_local i32 @Save_DM_Func_Flag(%struct.adapter*) #1

declare dso_local i32 @Switch_DM_Func(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Set_MSR(%struct.adapter*, i32) #1

declare dso_local i32 @site_survey(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
