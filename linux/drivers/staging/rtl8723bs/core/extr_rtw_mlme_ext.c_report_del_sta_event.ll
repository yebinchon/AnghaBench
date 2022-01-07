; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_report_del_sta_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_report_del_sta_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.cmd_priv, %struct.mlme_ext_priv }
%struct.cmd_priv = type { i32 }
%struct.mlme_ext_priv = type { i32 }
%struct.cmd_obj = type { i32, i64, i32*, i32*, i32, i32 }
%struct.sta_info = type { i64 }
%struct.stadel_event = type { i32, i64, i32 }
%struct.C2HEvent_Header = type { i32, i32, i32 }

@_Set_MLME_EVT = common dso_local global i32 0, align 4
@_DelSTA = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"report_del_sta_event: delete STA, mac_id =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_del_sta_event(%struct.adapter* %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.cmd_obj*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stadel_event*, align 8
  %13 = alloca %struct.C2HEvent_Header*, align 8
  %14 = alloca %struct.mlme_ext_priv*, align 8
  %15 = alloca %struct.cmd_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 2
  store %struct.mlme_ext_priv* %17, %struct.mlme_ext_priv** %14, align 8
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  store %struct.cmd_priv* %19, %struct.cmd_priv** %15, align 8
  %20 = call i8* @rtw_zmalloc(i32 40)
  %21 = bitcast i8* %20 to %struct.cmd_obj*
  store %struct.cmd_obj* %21, %struct.cmd_obj** %7, align 8
  %22 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %23 = icmp eq %struct.cmd_obj* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %101

25:                                               ; preds = %3
  store i32 36, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @rtw_zmalloc(i32 %26)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %33 = call i32 @kfree(%struct.cmd_obj* %32)
  br label %101

34:                                               ; preds = %25
  %35 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %36 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %35, i32 0, i32 5
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load i32, i32* @_Set_MLME_EVT, align 4
  %39 = call i32 @GEN_CMD_CODE(i32 %38)
  %40 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %41 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %44 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %47 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %49 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %51 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = bitcast i32* %52 to %struct.C2HEvent_Header*
  store %struct.C2HEvent_Header* %53, %struct.C2HEvent_Header** %13, align 8
  %54 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %13, align 8
  %55 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %54, i32 0, i32 0
  store i32 24, i32* %55, align 4
  %56 = load i32, i32* @_DelSTA, align 4
  %57 = call i32 @GEN_EVT_CODE(i32 %56)
  %58 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %13, align 8
  %59 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %14, align 8
  %61 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %60, i32 0, i32 0
  %62 = call i32 @atomic_inc_return(i32* %61)
  %63 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %13, align 8
  %64 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 12
  %67 = bitcast i32* %66 to %struct.stadel_event*
  store %struct.stadel_event* %67, %struct.stadel_event** %12, align 8
  %68 = load %struct.stadel_event*, %struct.stadel_event** %12, align 8
  %69 = getelementptr inbounds %struct.stadel_event, %struct.stadel_event* %68, i32 0, i32 2
  %70 = bitcast i32* %69 to i8*
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* @ETH_ALEN, align 4
  %73 = call i32 @memcpy(i8* %70, i8* %71, i32 %72)
  %74 = load %struct.stadel_event*, %struct.stadel_event** %12, align 8
  %75 = getelementptr inbounds %struct.stadel_event, %struct.stadel_event* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = bitcast i16* %6 to i8*
  %79 = call i32 @memcpy(i8* %77, i8* %78, i32 2)
  %80 = load %struct.adapter*, %struct.adapter** %4, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 0
  %82 = load i8*, i8** %5, align 8
  %83 = call %struct.sta_info* @rtw_get_stainfo(i32* %81, i8* %82)
  store %struct.sta_info* %83, %struct.sta_info** %10, align 8
  %84 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %85 = icmp ne %struct.sta_info* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %34
  %87 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  br label %92

91:                                               ; preds = %34
  store i32 -1, i32* %11, align 4
  br label %92

92:                                               ; preds = %91, %86
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.stadel_event*, %struct.stadel_event** %12, align 8
  %95 = getelementptr inbounds %struct.stadel_event, %struct.stadel_event* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @DBG_871X(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.cmd_priv*, %struct.cmd_priv** %15, align 8
  %99 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %100 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %98, %struct.cmd_obj* %99)
  br label %101

101:                                              ; preds = %92, %31, %24
  ret void
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @GEN_EVT_CODE(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(i32*, i8*) #1

declare dso_local i32 @DBG_871X(i8*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
