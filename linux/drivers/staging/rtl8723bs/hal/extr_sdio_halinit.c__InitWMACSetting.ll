; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitWMACSetting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitWMACSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32 }

@RCR_APM = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_CBSSID_DATA = common dso_local global i32 0, align 4
@RCR_CBSSID_BCN = common dso_local global i32 0, align 4
@RCR_AMF = common dso_local global i32 0, align 4
@RCR_HTC_LOC_CTRL = common dso_local global i32 0, align 4
@RCR_APP_PHYST_RXFF = common dso_local global i32 0, align 4
@RCR_APP_ICV = common dso_local global i32 0, align 4
@RCR_APP_MIC = common dso_local global i32 0, align 4
@REG_RCR = common dso_local global i64 0, align 8
@REG_MAR = common dso_local global i64 0, align 8
@REG_RXFLTMAP2 = common dso_local global i32 0, align 4
@REG_RXFLTMAP1 = common dso_local global i32 0, align 4
@REG_RXFLTMAP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitWMACSetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitWMACSetting(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %5)
  store %struct.hal_com_data* %6, %struct.hal_com_data** %3, align 8
  %7 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %8 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @RCR_APM, align 4
  %10 = load i32, i32* @RCR_AM, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RCR_AB, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %15 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @RCR_CBSSID_DATA, align 4
  %19 = load i32, i32* @RCR_CBSSID_BCN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RCR_AMF, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %24 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @RCR_HTC_LOC_CTRL, align 4
  %28 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %29 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @RCR_APP_PHYST_RXFF, align 4
  %33 = load i32, i32* @RCR_APP_ICV, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RCR_APP_MIC, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %38 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = load i64, i64* @REG_RCR, align 8
  %43 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %44 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rtw_write32(%struct.adapter* %41, i64 %42, i32 %45)
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = load i64, i64* @REG_MAR, align 8
  %49 = call i32 @rtw_write32(%struct.adapter* %47, i64 %48, i32 -1)
  %50 = load %struct.adapter*, %struct.adapter** %2, align 8
  %51 = load i64, i64* @REG_MAR, align 8
  %52 = add nsw i64 %51, 4
  %53 = call i32 @rtw_write32(%struct.adapter* %50, i64 %52, i32 -1)
  store i32 65535, i32* %4, align 4
  %54 = load %struct.adapter*, %struct.adapter** %2, align 8
  %55 = load i32, i32* @REG_RXFLTMAP2, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @rtw_write16(%struct.adapter* %54, i32 %55, i32 %56)
  store i32 1024, i32* %4, align 4
  %58 = load %struct.adapter*, %struct.adapter** %2, align 8
  %59 = load i32, i32* @REG_RXFLTMAP1, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @rtw_write16(%struct.adapter* %58, i32 %59, i32 %60)
  store i32 65535, i32* %4, align 4
  %62 = load %struct.adapter*, %struct.adapter** %2, align 8
  %63 = load i32, i32* @REG_RXFLTMAP0, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @rtw_write16(%struct.adapter* %62, i32 %63, i32 %64)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i64, i32) #1

declare dso_local i32 @rtw_write16(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
