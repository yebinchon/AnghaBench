; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_report_survey_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_report_survey_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv, %struct.mlme_ext_priv }
%struct.cmd_priv = type { i32 }
%struct.mlme_ext_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.recv_frame = type { i32 }
%struct.cmd_obj = type { i32, i64, i32*, %struct.cmd_obj*, i32, i32 }
%struct.survey_event = type { i32 }
%struct.C2HEvent_Header = type { i32, i32, i32 }
%struct.wlan_bssid_ex = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_Set_MLME_EVT_CMD_ = common dso_local global i32 0, align 4
@_Survey_EVT_ = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_survey_event(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca %struct.cmd_obj*, align 8
  %6 = alloca %struct.cmd_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.survey_event*, align 8
  %9 = alloca %struct.C2HEvent_Header*, align 8
  %10 = alloca %struct.mlme_ext_priv*, align 8
  %11 = alloca %struct.cmd_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = icmp ne %struct.adapter* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %92

15:                                               ; preds = %2
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  store %struct.mlme_ext_priv* %17, %struct.mlme_ext_priv** %10, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  store %struct.cmd_priv* %19, %struct.cmd_priv** %11, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.cmd_obj* @kzalloc(i32 40, i32 %20)
  store %struct.cmd_obj* %21, %struct.cmd_obj** %5, align 8
  %22 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %23 = icmp ne %struct.cmd_obj* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %92

25:                                               ; preds = %15
  store i32 16, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.cmd_obj* @kzalloc(i32 %26, i32 %27)
  store %struct.cmd_obj* %28, %struct.cmd_obj** %6, align 8
  %29 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %30 = icmp ne %struct.cmd_obj* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %33 = call i32 @kfree(%struct.cmd_obj* %32)
  br label %92

34:                                               ; preds = %25
  %35 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %36 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %35, i32 0, i32 5
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load i32, i32* @_Set_MLME_EVT_CMD_, align 4
  %39 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %40 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %43 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %45 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %46 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %45, i32 0, i32 3
  store %struct.cmd_obj* %44, %struct.cmd_obj** %46, align 8
  %47 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %48 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %50 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %52 = bitcast %struct.cmd_obj* %51 to %struct.C2HEvent_Header*
  store %struct.C2HEvent_Header* %52, %struct.C2HEvent_Header** %9, align 8
  %53 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %9, align 8
  %54 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %53, i32 0, i32 0
  store i32 4, i32* %54, align 4
  %55 = load i32, i32* @_Survey_EVT_, align 4
  %56 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %9, align 8
  %57 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %10, align 8
  %59 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %58, i32 0, i32 1
  %60 = call i32 @atomic_inc_return(i32* %59)
  %61 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %9, align 8
  %62 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %64 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %63, i64 12
  %65 = bitcast %struct.cmd_obj* %64 to %struct.survey_event*
  store %struct.survey_event* %65, %struct.survey_event** %8, align 8
  %66 = load %struct.adapter*, %struct.adapter** %3, align 8
  %67 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %68 = load %struct.survey_event*, %struct.survey_event** %8, align 8
  %69 = getelementptr inbounds %struct.survey_event, %struct.survey_event* %68, i32 0, i32 0
  %70 = bitcast i32* %69 to %struct.wlan_bssid_ex*
  %71 = call i64 @collect_bss_info(%struct.adapter* %66, %struct.recv_frame* %67, %struct.wlan_bssid_ex* %70)
  %72 = load i64, i64* @_FAIL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %34
  %75 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %76 = call i32 @kfree(%struct.cmd_obj* %75)
  %77 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %78 = call i32 @kfree(%struct.cmd_obj* %77)
  br label %92

79:                                               ; preds = %34
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = load %struct.survey_event*, %struct.survey_event** %8, align 8
  %82 = getelementptr inbounds %struct.survey_event, %struct.survey_event* %81, i32 0, i32 0
  %83 = call i32 @process_80211d(%struct.adapter* %80, i32* %82)
  %84 = load %struct.cmd_priv*, %struct.cmd_priv** %11, align 8
  %85 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %86 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %84, %struct.cmd_obj* %85)
  %87 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %10, align 8
  %88 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %79, %74, %31, %24, %14
  ret void
}

declare dso_local %struct.cmd_obj* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @collect_bss_info(%struct.adapter*, %struct.recv_frame*, %struct.wlan_bssid_ex*) #1

declare dso_local i32 @process_80211d(%struct.adapter*, i32*) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
