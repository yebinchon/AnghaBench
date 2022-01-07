; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_report_add_sta_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_report_add_sta_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv, %struct.mlme_ext_priv }
%struct.cmd_priv = type { i32 }
%struct.mlme_ext_priv = type { i32 }
%struct.cmd_obj = type { i32, i64, i32*, i32*, i32, i32 }
%struct.stassoc_event = type { i32, i32 }
%struct.C2HEvent_Header = type { i32, i32, i32 }

@_Set_MLME_EVT = common dso_local global i32 0, align 4
@_AddSTA = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"report_add_sta_event: add STA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_add_sta_event(%struct.adapter* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_obj*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stassoc_event*, align 8
  %11 = alloca %struct.C2HEvent_Header*, align 8
  %12 = alloca %struct.mlme_ext_priv*, align 8
  %13 = alloca %struct.cmd_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  store %struct.mlme_ext_priv* %15, %struct.mlme_ext_priv** %12, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  store %struct.cmd_priv* %17, %struct.cmd_priv** %13, align 8
  %18 = call i8* @rtw_zmalloc(i32 40)
  %19 = bitcast i8* %18 to %struct.cmd_obj*
  store %struct.cmd_obj* %19, %struct.cmd_obj** %7, align 8
  %20 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %21 = icmp eq %struct.cmd_obj* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %79

23:                                               ; preds = %3
  store i32 20, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @rtw_zmalloc(i32 %24)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %31 = call i32 @kfree(%struct.cmd_obj* %30)
  br label %79

32:                                               ; preds = %23
  %33 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %34 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %33, i32 0, i32 5
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load i32, i32* @_Set_MLME_EVT, align 4
  %37 = call i32 @GEN_CMD_CODE(i32 %36)
  %38 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %39 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %42 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %45 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %47 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %49 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = bitcast i32* %50 to %struct.C2HEvent_Header*
  store %struct.C2HEvent_Header* %51, %struct.C2HEvent_Header** %11, align 8
  %52 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %11, align 8
  %53 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %52, i32 0, i32 0
  store i32 8, i32* %53, align 4
  %54 = load i32, i32* @_AddSTA, align 4
  %55 = call i32 @GEN_EVT_CODE(i32 %54)
  %56 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %11, align 8
  %57 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %12, align 8
  %59 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %58, i32 0, i32 0
  %60 = call i32 @atomic_inc_return(i32* %59)
  %61 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %11, align 8
  %62 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 12
  %65 = bitcast i32* %64 to %struct.stassoc_event*
  store %struct.stassoc_event* %65, %struct.stassoc_event** %10, align 8
  %66 = load %struct.stassoc_event*, %struct.stassoc_event** %10, align 8
  %67 = getelementptr inbounds %struct.stassoc_event, %struct.stassoc_event* %66, i32 0, i32 1
  %68 = bitcast i32* %67 to i8*
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = call i32 @memcpy(i8* %68, i8* %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.stassoc_event*, %struct.stassoc_event** %10, align 8
  %74 = getelementptr inbounds %struct.stassoc_event, %struct.stassoc_event* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = call i32 @DBG_871X(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.cmd_priv*, %struct.cmd_priv** %13, align 8
  %77 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %78 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %76, %struct.cmd_obj* %77)
  br label %79

79:                                               ; preds = %32, %29, %22
  ret void
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @GEN_EVT_CODE(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
