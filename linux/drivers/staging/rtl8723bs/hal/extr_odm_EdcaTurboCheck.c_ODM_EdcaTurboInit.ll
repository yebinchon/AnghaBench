; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_EdcaTurboCheck.c_ODM_EdcaTurboInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_EdcaTurboCheck.c_ODM_EdcaTurboInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.adapter*, %struct.TYPE_5__ }
%struct.adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ODM_COMP_EDCA_TURBO = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Original VO PARAM: 0x%x\0A\00", align 1
@ODM_EDCA_VO_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Original VI PARAM: 0x%x\0A\00", align 1
@ODM_EDCA_VI_PARAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Original BE PARAM: 0x%x\0A\00", align 1
@ODM_EDCA_BE_PARAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Original BK PARAM: 0x%x\0A\00", align 1
@ODM_EDCA_BK_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_EdcaTurboInit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.adapter*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load i32, i32* @ODM_COMP_EDCA_TURBO, align 4
  %21 = load i32, i32* @ODM_DBG_LOUD, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.adapter*, %struct.adapter** %23, align 8
  %25 = load i32, i32* @ODM_EDCA_VO_PARAM, align 4
  %26 = call i32 @rtw_read32(%struct.adapter* %24, i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %19, i32 %20, i32 %21, i8* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = load i32, i32* @ODM_COMP_EDCA_TURBO, align 4
  %32 = load i32, i32* @ODM_DBG_LOUD, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.adapter*, %struct.adapter** %34, align 8
  %36 = load i32, i32* @ODM_EDCA_VI_PARAM, align 4
  %37 = call i32 @rtw_read32(%struct.adapter* %35, i32 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %30, i32 %31, i32 %32, i8* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = load i32, i32* @ODM_COMP_EDCA_TURBO, align 4
  %43 = load i32, i32* @ODM_DBG_LOUD, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.adapter*, %struct.adapter** %45, align 8
  %47 = load i32, i32* @ODM_EDCA_BE_PARAM, align 4
  %48 = call i32 @rtw_read32(%struct.adapter* %46, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %41, i32 %42, i32 %43, i8* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = load i32, i32* @ODM_COMP_EDCA_TURBO, align 4
  %54 = load i32, i32* @ODM_DBG_LOUD, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.adapter*, %struct.adapter** %56, align 8
  %58 = load i32, i32* @ODM_EDCA_BK_PARAM, align 4
  %59 = call i32 @rtw_read32(%struct.adapter* %57, i32 %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %52, i32 %53, i32 %54, i8* %61)
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_7__*, i32, i32, i8*) #1

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
