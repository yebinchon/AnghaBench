; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_odm.c_rtw_odm_adaptivity_parm_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_odm.c_rtw_odm_adaptivity_parm_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [30 x i8] c"%10s %16s %8s %10s %11s %14s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"TH_L2H_ini\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"TH_EDCCA_HL_diff\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"IGI_Base\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ForceEDCCA\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"AdapEn_RSSI\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"IGI_LowerBound\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"0x%-8x %-16d 0x%-6x %-10d %-11u %-14u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_odm_adaptivity_parm_msg(i8* %0, %struct.adapter* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.hal_com_data*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.adapter* %1, %struct.adapter** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %7)
  store %struct.hal_com_data* %8, %struct.hal_com_data** %5, align 8
  %9 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %10 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %9, i32 0, i32 0
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @DBG_871X_SEL_NL(i8* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @DBG_871X_SEL_NL(i8* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %17, i8* %20, i8* %23, i8* %26, i8* %29, i8* %32)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @DBG_871X_SEL_NL(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
