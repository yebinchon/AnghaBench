; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_DIGInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_DIGInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, %struct.rtw_dig, %struct.adapter* }
%struct.rtw_dig = type { i32, i32, i32, i32, i8*, i8*, i64, i64, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i64 }
%struct.adapter = type { i32 }

@ODM_REG_IGI_A_11N = common dso_local global i32 0, align 4
@ODM_BIT_IGI_11N = common dso_local global i32 0, align 4
@DM_DIG_THRESH_LOW = common dso_local global i32 0, align 4
@DM_DIG_THRESH_HIGH = common dso_local global i32 0, align 4
@DM_false_ALARM_THRESH_LOW = common dso_local global i32 0, align 4
@DM_false_ALARM_THRESH_HIGH = common dso_local global i32 0, align 4
@DM_DIG_MAX_NIC = common dso_local global i32 0, align 4
@DM_DIG_MIN_NIC = common dso_local global i8* null, align 8
@DM_DIG_BACKOFF_DEFAULT = common dso_local global i32 0, align 4
@DM_DIG_BACKOFF_MAX = common dso_local global i32 0, align 4
@DM_DIG_BACKOFF_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_DIGInit(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.rtw_dig*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %5 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %5, i32 0, i32 2
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %8, i32 0, i32 1
  store %struct.rtw_dig* %9, %struct.rtw_dig** %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = load i32, i32* @ODM_REG_IGI_A_11N, align 4
  %12 = load i32, i32* @ODM_BIT_IGI_11N, align 4
  %13 = call i64 @phy_query_bb_reg(%struct.adapter* %10, i32 %11, i32 %12)
  %14 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %14, i32 0, i32 18
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @DM_DIG_THRESH_LOW, align 4
  %17 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %18 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %17, i32 0, i32 17
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @DM_DIG_THRESH_HIGH, align 4
  %20 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %21 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %20, i32 0, i32 16
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @DM_false_ALARM_THRESH_LOW, align 4
  %23 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %24 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %23, i32 0, i32 15
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @DM_false_ALARM_THRESH_HIGH, align 4
  %26 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %27 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %26, i32 0, i32 14
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DM_DIG_MAX_NIC, align 4
  %29 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %30 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %29, i32 0, i32 13
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** @DM_DIG_MIN_NIC, align 8
  %32 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %33 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %32, i32 0, i32 12
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @DM_DIG_BACKOFF_DEFAULT, align 4
  %35 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %36 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @DM_DIG_BACKOFF_MAX, align 4
  %38 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %39 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @DM_DIG_BACKOFF_MIN, align 4
  %41 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %42 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %44 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %43, i32 0, i32 0
  store i32 255, i32* %44, align 8
  %45 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %46 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %45, i32 0, i32 1
  store i32 131, i32* %46, align 4
  %47 = load i8*, i8** @DM_DIG_MIN_NIC, align 8
  %48 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %49 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %48, i32 0, i32 8
  store i8* %47, i8** %49, align 8
  %50 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %51 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %53 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load i8*, i8** @DM_DIG_MIN_NIC, align 8
  %55 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %56 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @DM_DIG_MIN_NIC, align 8
  %58 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %59 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %61 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load %struct.rtw_dig*, %struct.rtw_dig** %4, align 8
  %63 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %65 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  ret void
}

declare dso_local i64 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
