; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_DIGbyRSSI_LPS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_DIGbyRSSI_LPS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@DM_DIG_MIN_NIC = common dso_local global i32 0, align 4
@RSSI_OFFSET_DIG = common dso_local global i32 0, align 4
@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"odm_DIGbyRSSI_LPS() ==>\0A\00", align 1
@DM_DIG_FA_TH2_LPS = common dso_local global i64 0, align 8
@DM_DIG_FA_TH1_LPS = common dso_local global i64 0, align 8
@DM_DIG_FA_TH0_LPS = common dso_local global i64 0, align 8
@DM_DIG_MAX_NIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"odm_DIGbyRSSI_LPS(): pFalseAlmCnt->Cnt_all = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"odm_DIGbyRSSI_LPS(): pDM_Odm->RSSI_Min = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"odm_DIGbyRSSI_LPS(): CurrentIGI = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_DIGbyRSSI_LPS(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load i32, i32* @DM_DIG_MIN_NIC, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RSSI_OFFSET_DIG, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load i32, i32* @ODM_COMP_DIG, align 4
  %20 = load i32, i32* @ODM_DBG_LOUD, align 4
  %21 = call i32 @ODM_RT_TRACE(%struct.TYPE_6__* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DM_DIG_FA_TH2_LPS, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %6, align 4
  br label %50

30:                                               ; preds = %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DM_DIG_FA_TH1_LPS, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %6, align 4
  br label %49

39:                                               ; preds = %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DM_DIG_FA_TH0_LPS, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 2
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 10
  %55 = load i32, i32* @DM_DIG_MIN_NIC, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 10
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @DM_DIG_MIN_NIC, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @DM_DIG_MAX_NIC, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @DM_DIG_MAX_NIC, align 4
  store i32 %69, i32* %6, align 4
  br label %77

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %68
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = load i32, i32* @ODM_COMP_DIG, align 4
  %80 = load i32, i32* @ODM_DBG_LOUD, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @ODM_RT_TRACE(%struct.TYPE_6__* %78, i32 %79, i32 %80, i8* %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = load i32, i32* @ODM_COMP_DIG, align 4
  %88 = load i32, i32* @ODM_DBG_LOUD, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @ODM_RT_TRACE(%struct.TYPE_6__* %86, i32 %87, i32 %88, i8* %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = load i32, i32* @ODM_COMP_DIG, align 4
  %97 = load i32, i32* @ODM_DBG_LOUD, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @ODM_RT_TRACE(%struct.TYPE_6__* %95, i32 %96, i32 %97, i8* %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ODM_Write_DIG(%struct.TYPE_6__* %102, i32 %103)
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_6__*, i32, i32, i8*) #1

declare dso_local i32 @ODM_Write_DIG(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
