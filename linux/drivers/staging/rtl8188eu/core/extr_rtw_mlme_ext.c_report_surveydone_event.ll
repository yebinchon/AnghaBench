; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_report_surveydone_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_report_surveydone_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv, %struct.mlme_ext_priv }
%struct.cmd_priv = type { i32 }
%struct.mlme_ext_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cmd_obj = type { i32, i64, i32*, i32*, i32, i32 }
%struct.surveydone_event = type { i32 }
%struct.C2HEvent_Header = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@_Set_MLME_EVT_CMD_ = common dso_local global i32 0, align 4
@_SurveyDone_EVT_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"survey done event(%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_surveydone_event(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.cmd_obj*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.surveydone_event*, align 8
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
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 40, i32 %14)
  %16 = bitcast i8* %15 to %struct.cmd_obj*
  store %struct.cmd_obj* %16, %struct.cmd_obj** %3, align 8
  %17 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %18 = icmp ne %struct.cmd_obj* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %75

20:                                               ; preds = %1
  store i32 16, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %29 = call i32 @kfree(%struct.cmd_obj* %28)
  br label %75

30:                                               ; preds = %20
  %31 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %32 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %31, i32 0, i32 5
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load i32, i32* @_Set_MLME_EVT_CMD_, align 4
  %35 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %36 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %39 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %42 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %44 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %46 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = bitcast i32* %47 to %struct.C2HEvent_Header*
  store %struct.C2HEvent_Header* %48, %struct.C2HEvent_Header** %7, align 8
  %49 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %7, align 8
  %50 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %49, i32 0, i32 0
  store i32 4, i32* %50, align 4
  %51 = load i32, i32* @_SurveyDone_EVT_, align 4
  %52 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %7, align 8
  %53 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %55 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %54, i32 0, i32 1
  %56 = call i32 @atomic_inc_return(i32* %55)
  %57 = load %struct.C2HEvent_Header*, %struct.C2HEvent_Header** %7, align 8
  %58 = getelementptr inbounds %struct.C2HEvent_Header, %struct.C2HEvent_Header* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 12
  %61 = bitcast i32* %60 to %struct.surveydone_event*
  store %struct.surveydone_event* %61, %struct.surveydone_event** %6, align 8
  %62 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %63 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.surveydone_event*, %struct.surveydone_event** %6, align 8
  %67 = getelementptr inbounds %struct.surveydone_event, %struct.surveydone_event* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.surveydone_event*, %struct.surveydone_event** %6, align 8
  %69 = getelementptr inbounds %struct.surveydone_event, %struct.surveydone_event* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DBG_88E(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.cmd_priv*, %struct.cmd_priv** %9, align 8
  %73 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %74 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %72, %struct.cmd_obj* %73)
  br label %75

75:                                               ; preds = %30, %27, %19
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @DBG_88E(i8*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
