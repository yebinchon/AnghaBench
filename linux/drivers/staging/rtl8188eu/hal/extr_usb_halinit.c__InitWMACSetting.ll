; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__InitWMACSetting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__InitWMACSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i32 }

@RCR_AAP = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_CBSSID_DATA = common dso_local global i32 0, align 4
@RCR_CBSSID_BCN = common dso_local global i32 0, align 4
@RCR_APP_ICV = common dso_local global i32 0, align 4
@RCR_AMF = common dso_local global i32 0, align 4
@RCR_HTC_LOC_CTRL = common dso_local global i32 0, align 4
@RCR_APP_MIC = common dso_local global i32 0, align 4
@RCR_APP_PHYSTS = common dso_local global i32 0, align 4
@REG_RCR = common dso_local global i64 0, align 8
@REG_MAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitWMACSetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitWMACSetting(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_data_8188e*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  %6 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  store %struct.hal_data_8188e* %6, %struct.hal_data_8188e** %3, align 8
  %7 = load i32, i32* @RCR_AAP, align 4
  %8 = load i32, i32* @RCR_APM, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RCR_AM, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RCR_AB, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RCR_CBSSID_DATA, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RCR_CBSSID_BCN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RCR_APP_ICV, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RCR_AMF, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RCR_HTC_LOC_CTRL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RCR_APP_MIC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RCR_APP_PHYSTS, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %29 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = load i64, i64* @REG_RCR, align 8
  %32 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %33 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_write32(%struct.adapter* %30, i64 %31, i32 %34)
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = load i64, i64* @REG_MAR, align 8
  %38 = call i32 @usb_write32(%struct.adapter* %36, i64 %37, i32 -1)
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = load i64, i64* @REG_MAR, align 8
  %41 = add nsw i64 %40, 4
  %42 = call i32 @usb_write32(%struct.adapter* %39, i64 %41, i32 -1)
  ret void
}

declare dso_local i32 @usb_write32(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
