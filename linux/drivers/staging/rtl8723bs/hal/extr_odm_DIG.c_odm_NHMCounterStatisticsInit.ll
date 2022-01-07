; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_NHMCounterStatisticsInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_NHMCounterStatisticsInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ODM_REG_NHM_TIMER_11N = common dso_local global i64 0, align 8
@ODM_REG_NHM_TH9_TH10_11N = common dso_local global i64 0, align 8
@ODM_REG_NHM_TH3_TO_TH0_11N = common dso_local global i32 0, align 4
@ODM_REG_NHM_TH7_TO_TH4_11N = common dso_local global i32 0, align 4
@ODM_REG_FPGA0_IQK_11N = common dso_local global i64 0, align 8
@bMaskByte0 = common dso_local global i32 0, align 4
@BIT10 = common dso_local global i32 0, align 4
@BIT9 = common dso_local global i32 0, align 4
@BIT8 = common dso_local global i32 0, align 4
@ODM_REG_OFDM_FA_RSTC_11N = common dso_local global i64 0, align 8
@BIT7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_NHMCounterStatisticsInit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* @ODM_REG_NHM_TIMER_11N, align 8
  %10 = add nsw i64 %9, 2
  %11 = call i32 @rtw_write16(i32 %8, i64 %10, i32 10000)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @ODM_REG_NHM_TH9_TH10_11N, align 8
  %16 = add nsw i64 %15, 2
  %17 = call i32 @rtw_write16(i32 %14, i64 %16, i32 65535)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ODM_REG_NHM_TH3_TO_TH0_11N, align 4
  %22 = call i32 @rtw_write32(i32 %20, i32 %21, i32 -174)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ODM_REG_NHM_TH7_TO_TH4_11N, align 4
  %27 = call i32 @rtw_write32(i32 %25, i32 %26, i32 -1)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @ODM_REG_FPGA0_IQK_11N, align 8
  %32 = load i32, i32* @bMaskByte0, align 4
  %33 = call i32 @PHY_SetBBReg(i32 %30, i64 %31, i32 %32, i32 255)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @ODM_REG_NHM_TH9_TH10_11N, align 8
  %38 = load i32, i32* @BIT10, align 4
  %39 = load i32, i32* @BIT9, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BIT8, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @PHY_SetBBReg(i32 %36, i64 %37, i32 %42, i32 7)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @ODM_REG_OFDM_FA_RSTC_11N, align 8
  %48 = load i32, i32* @BIT7, align 4
  %49 = call i32 @PHY_SetBBReg(i32 %46, i64 %47, i32 %48, i32 1)
  ret void
}

declare dso_local i32 @rtw_write16(i32, i64, i32) #1

declare dso_local i32 @rtw_write32(i32, i32, i32) #1

declare dso_local i32 @PHY_SetBBReg(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
