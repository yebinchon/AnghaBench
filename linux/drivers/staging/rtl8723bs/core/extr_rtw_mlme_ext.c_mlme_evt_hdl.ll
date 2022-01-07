; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_mlme_evt_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_mlme_evt_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, void (%struct.adapter*, i32*)* }
%struct.adapter = type { %struct.evt_priv }
%struct.evt_priv = type { i32, i32 }

@MAX_C2HEVT = common dso_local global i32 0, align 4
@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0AEvent Code(%d) mismatch!\0A\00", align 1
@wlanevents = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"\0AEvent(%d) Parm Size mismatch (%d vs %d)!\0A\00", align 1
@H2C_SUCCESS = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlme_evt_hdl(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca void (%struct.adapter*, i32*)*, align 8
  %10 = alloca %struct.evt_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.evt_priv* %12, %struct.evt_priv** %10, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %94

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 65535
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 24
  %26 = and i32 %25, 127
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 255
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MAX_C2HEVT, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %16
  %35 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %36 = load i32, i32* @_drv_err_, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @RT_TRACE(i32 %35, i32 %36, i8* %39)
  br label %94

41:                                               ; preds = %16
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wlanevents, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %41
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wlanevents, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %49
  %59 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %60 = load i32, i32* @_drv_err_, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wlanevents, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @RT_TRACE(i32 %59, i32 %60, i8* %69)
  br label %94

71:                                               ; preds = %49, %41
  %72 = load %struct.evt_priv*, %struct.evt_priv** %10, align 8
  %73 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %72, i32 0, i32 0
  %74 = call i32 @atomic_inc(i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %71
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wlanevents, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load void (%struct.adapter*, i32*)*, void (%struct.adapter*, i32*)** %84, align 8
  store void (%struct.adapter*, i32*)* %85, void (%struct.adapter*, i32*)** %9, align 8
  %86 = load void (%struct.adapter*, i32*)*, void (%struct.adapter*, i32*)** %9, align 8
  %87 = load %struct.adapter*, %struct.adapter** %3, align 8
  %88 = load i32*, i32** %8, align 8
  call void %86(%struct.adapter* %87, i32* %88)
  %89 = load %struct.evt_priv*, %struct.evt_priv** %10, align 8
  %90 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %79, %71
  br label %94

94:                                               ; preds = %93, %58, %34, %15
  %95 = load i32, i32* @H2C_SUCCESS, align 4
  ret i32 %95
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
