; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_report_wmm_edca_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_report_wmm_edca_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv, %struct.mlme_ext_priv }
%struct.cmd_priv = type { i32 }
%struct.mlme_ext_priv = type { i32 }
%struct.cmd_obj = type { i32, i64, i32*, i32*, i32, i32 }
%struct.wmm_event = type { i64 }
%struct.C2HEvent_Header = type { i32, i32, i32 }

@_Set_MLME_EVT = common dso_local global i32 0, align 4
@_WMM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_wmm_edca_update(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.cmd_obj*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmm_event*, align 8
  %7 = alloca %struct.C2HEvent_Header*, align 8
  %8 = alloca %struct.mlme_ext_priv*, align 8
  %9 = alloca %struct.cmd_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %8, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.cmd_priv* %13, %struct.cmd_priv** %9, align 8
  %14 = call i8* @rtw_zmalloc(i32 40)
  %15 = bitcast i8* %14 to %struct.cmd_obj*
  store %struct.cmd_obj* %15, %struct.cmd_obj** %3, align 8
  %16 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %17 = icmp ne %struct.cmd_obj* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %67

19:                                               ; preds = %1
  store i32 20, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @rtw_zmalloc(i32 %20)
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %27 = call i32 @kfree(%struct.cmd_obj* %26)
  br label %67

28:                                               ; preds = %19
  %29 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %30 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %29, i32 0, i32 5
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load i32, i32* @_Set_MLME_EVT, align 4
  %33 = call i32 @GEN_CMD_CODE(i32 %32)
  %34 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %35 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %38 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %41 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %43 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %45 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = bitcast i32* %46 to %struct.C2HEvent_Header*
  store %struct.C2HEvent_Header* %47, %struct.C2HEvent_Header** %7, align 8
  %48 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %7, align 8
  %49 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %48, i32 0, i32 0
  store i32 8, i32* %49, align 4
  %50 = load i32, i32* @_WMM, align 4
  %51 = call i32 @GEN_EVT_CODE(i32 %50)
  %52 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %7, align 8
  %53 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %55 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %54, i32 0, i32 0
  %56 = call i32 @atomic_inc_return(i32* %55)
  %57 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %7, align 8
  %58 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 12
  %61 = bitcast i32* %60 to %struct.wmm_event*
  store %struct.wmm_event* %61, %struct.wmm_event** %6, align 8
  %62 = load %struct.wmm_event*, %struct.wmm_event** %6, align 8
  %63 = getelementptr inbounds %struct.wmm_event, %struct.wmm_event* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.cmd_priv*, %struct.cmd_priv** %9, align 8
  %65 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %66 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %64, %struct.cmd_obj* %65)
  br label %67

67:                                               ; preds = %28, %25, %18
  ret void
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @GEN_EVT_CODE(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
