; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_report_join_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_report_join_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv, %struct.mlme_ext_priv }
%struct.cmd_priv = type { i32 }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.cmd_obj = type { i32, i64, i32*, i32*, i32, i32 }
%struct.joinbss_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.C2HEvent_Header = type { i32, i32, i32 }

@_Set_MLME_EVT = common dso_local global i32 0, align 4
@_JoinBss = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"report_join_res(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_join_res(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_obj*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.joinbss_event*, align 8
  %9 = alloca %struct.C2HEvent_Header*, align 8
  %10 = alloca %struct.mlme_ext_priv*, align 8
  %11 = alloca %struct.mlme_ext_info*, align 8
  %12 = alloca %struct.cmd_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store %struct.mlme_ext_priv* %14, %struct.mlme_ext_priv** %10, align 8
  %15 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %10, align 8
  %16 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %15, i32 0, i32 1
  store %struct.mlme_ext_info* %16, %struct.mlme_ext_info** %11, align 8
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  store %struct.cmd_priv* %18, %struct.cmd_priv** %12, align 8
  %19 = call i8* @rtw_zmalloc(i32 40)
  %20 = bitcast i8* %19 to %struct.cmd_obj*
  store %struct.cmd_obj* %20, %struct.cmd_obj** %5, align 8
  %21 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %22 = icmp ne %struct.cmd_obj* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %91

24:                                               ; preds = %2
  store i32 24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @rtw_zmalloc(i32 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %32 = call i32 @kfree(%struct.cmd_obj* %31)
  br label %91

33:                                               ; preds = %24
  %34 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %35 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %34, i32 0, i32 5
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load i32, i32* @_Set_MLME_EVT, align 4
  %38 = call i32 @GEN_CMD_CODE(i32 %37)
  %39 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %40 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %43 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %46 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %48 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %50 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = bitcast i32* %51 to %struct.C2HEvent_Header*
  store %struct.C2HEvent_Header* %52, %struct.C2HEvent_Header** %9, align 8
  %53 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %9, align 8
  %54 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %53, i32 0, i32 0
  store i32 12, i32* %54, align 4
  %55 = load i32, i32* @_JoinBss, align 4
  %56 = call i32 @GEN_EVT_CODE(i32 %55)
  %57 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %9, align 8
  %58 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %10, align 8
  %60 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc_return(i32* %60)
  %62 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %9, align 8
  %63 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 12
  %66 = bitcast i32* %65 to %struct.joinbss_event*
  store %struct.joinbss_event* %66, %struct.joinbss_event** %8, align 8
  %67 = load %struct.joinbss_event*, %struct.joinbss_event** %8, align 8
  %68 = getelementptr inbounds %struct.joinbss_event, %struct.joinbss_event* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = bitcast i32* %69 to i8*
  %71 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %11, align 8
  %72 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %71, i32 0, i32 0
  %73 = call i32 @memcpy(i8* %70, i32* %72, i32 4)
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.joinbss_event*, %struct.joinbss_event** %8, align 8
  %76 = getelementptr inbounds %struct.joinbss_event, %struct.joinbss_event* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.joinbss_event*, %struct.joinbss_event** %8, align 8
  %79 = getelementptr inbounds %struct.joinbss_event, %struct.joinbss_event* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %74, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @DBG_871X(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = load %struct.joinbss_event*, %struct.joinbss_event** %8, align 8
  %85 = getelementptr inbounds %struct.joinbss_event, %struct.joinbss_event* %84, i32 0, i32 0
  %86 = bitcast %struct.TYPE_2__* %85 to i32*
  %87 = call i32 @rtw_joinbss_event_prehandle(%struct.adapter* %83, i32* %86)
  %88 = load %struct.cmd_priv*, %struct.cmd_priv** %12, align 8
  %89 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %90 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %88, %struct.cmd_obj* %89)
  br label %91

91:                                               ; preds = %33, %30, %23
  ret void
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @GEN_EVT_CODE(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @DBG_871X(i8*, i32) #1

declare dso_local i32 @rtw_joinbss_event_prehandle(%struct.adapter*, i32*) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
