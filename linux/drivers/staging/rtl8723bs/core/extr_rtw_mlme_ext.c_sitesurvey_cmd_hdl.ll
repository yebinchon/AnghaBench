; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_sitesurvey_cmd_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_sitesurvey_cmd_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.sitesurvey_parm = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@SCAN_DISABLE = common dso_local global i64 0, align 8
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
  br i1 %21, label %22, label %131

22:                                               ; preds = %2
  %23 = load i64, i64* @SCAN_START, align 8
  %24 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %25 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %87, %22
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @RTW_SSID_SCAN_AMOUNT, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %90

37:                                               ; preds = %33
  %38 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %39 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %37
  %47 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %48 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %56 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %63 = call i32 @memcpy(i32 %54, i32 %61, i32 %62)
  %64 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %65 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %72 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i64 %70, i64* %77, align 8
  br label %86

78:                                               ; preds = %37
  %79 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %80 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %78, %46
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %11, align 8
  br label %33

90:                                               ; preds = %33
  %91 = load %struct.adapter*, %struct.adapter** %4, align 8
  %92 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %93 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RTW_CHANNEL_SCAN_AMOUNT, align 4
  %97 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %98 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %101 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @rtw_scan_ch_decision(%struct.adapter* %91, i32 %95, i32 %96, i32 %99, i32 %102)
  %104 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %105 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 8
  %107 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %108 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %111 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load %struct.adapter*, %struct.adapter** %4, align 8
  %114 = call i64 @is_client_associated_to_ap(%struct.adapter* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %90
  %117 = load i64, i64* @SCAN_TXNULL, align 8
  %118 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %119 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load %struct.adapter*, %struct.adapter** %4, align 8
  %122 = call i32 @issue_nulldata(%struct.adapter* %121, i32* null, i32 1, i32 3, i32 500)
  store i32 1, i32* %8, align 4
  br label %123

123:                                              ; preds = %116, %90
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %128 = call i32 @set_survey_timer(%struct.mlme_ext_priv* %127, i32 50)
  %129 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %129, i32* %3, align 4
  br label %169

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %2
  %132 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %133 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SCAN_START, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %145, label %138

138:                                              ; preds = %131
  %139 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %140 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SCAN_TXNULL, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %138, %131
  %146 = load %struct.adapter*, %struct.adapter** %4, align 8
  %147 = call i32 @Save_DM_Func_Flag(%struct.adapter* %146)
  %148 = load %struct.adapter*, %struct.adapter** %4, align 8
  %149 = load i32, i32* @DYNAMIC_FUNC_DISABLE, align 4
  %150 = call i32 @Switch_DM_Func(%struct.adapter* %148, i32 %149, i32 0)
  store i64 30, i64* %10, align 8
  %151 = load %struct.adapter*, %struct.adapter** %4, align 8
  %152 = load i32, i32* @HW_VAR_INITIAL_GAIN, align 4
  %153 = bitcast i64* %10 to i32*
  %154 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %151, i32 %152, i32* %153)
  %155 = load %struct.adapter*, %struct.adapter** %4, align 8
  %156 = load i32, i32* @_HW_STATE_NOLINK_, align 4
  %157 = call i32 @Set_MSR(%struct.adapter* %155, i32 %156)
  store i32 1, i32* %9, align 4
  %158 = load %struct.adapter*, %struct.adapter** %4, align 8
  %159 = load i32, i32* @HW_VAR_MLME_SITESURVEY, align 4
  %160 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %158, i32 %159, i32* %9)
  %161 = load i64, i64* @SCAN_PROCESS, align 8
  %162 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %163 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i64 %161, i64* %164, align 8
  br label %165

165:                                              ; preds = %145, %138
  %166 = load %struct.adapter*, %struct.adapter** %4, align 8
  %167 = call i32 @site_survey(%struct.adapter* %166)
  %168 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %126
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rtw_scan_ch_decision(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i64 @is_client_associated_to_ap(%struct.adapter*) #1

declare dso_local i32 @issue_nulldata(%struct.adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @set_survey_timer(%struct.mlme_ext_priv*, i32) #1

declare dso_local i32 @Save_DM_Func_Flag(%struct.adapter*) #1

declare dso_local i32 @Switch_DM_Func(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @Set_MSR(%struct.adapter*, i32) #1

declare dso_local i32 @site_survey(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
