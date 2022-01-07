; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__InitBeaconParameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__InitBeaconParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i8*, i8*, i8*, i8*, i8* }

@REG_BCN_CTRL = common dso_local global i64 0, align 8
@REG_TBTT_PROHIBIT = common dso_local global i64 0, align 8
@REG_DRVERLYINT = common dso_local global i32 0, align 4
@DRIVER_EARLY_INT_TIME = common dso_local global i32 0, align 4
@REG_BCNDMATIM = common dso_local global i32 0, align 4
@BCN_DMA_ATIME_INT_TIME = common dso_local global i32 0, align 4
@REG_BCNTCFG = common dso_local global i64 0, align 8
@REG_TXPAUSE = common dso_local global i64 0, align 8
@REG_FWHW_TXQ_CTRL = common dso_local global i64 0, align 8
@REG_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitBeaconParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitBeaconParameters(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_data_8188e*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  %6 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  store %struct.hal_data_8188e* %6, %struct.hal_data_8188e** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = load i64, i64* @REG_BCN_CTRL, align 8
  %9 = call i32 @usb_write16(%struct.adapter* %7, i64 %8, i32 4112)
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %12 = call i32 @usb_write16(%struct.adapter* %10, i64 %11, i32 25604)
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = load i32, i32* @REG_DRVERLYINT, align 4
  %15 = load i32, i32* @DRIVER_EARLY_INT_TIME, align 4
  %16 = call i32 @usb_write8(%struct.adapter* %13, i32 %14, i32 %15)
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = load i32, i32* @REG_BCNDMATIM, align 4
  %19 = load i32, i32* @BCN_DMA_ATIME_INT_TIME, align 4
  %20 = call i32 @usb_write8(%struct.adapter* %17, i32 %18, i32 %19)
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = load i64, i64* @REG_BCNTCFG, align 8
  %23 = call i32 @usb_write16(%struct.adapter* %21, i64 %22, i32 26127)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = load i64, i64* @REG_BCN_CTRL, align 8
  %26 = call i8* @usb_read8(%struct.adapter* %24, i64 %25)
  %27 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %28 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load i64, i64* @REG_TXPAUSE, align 8
  %31 = call i8* @usb_read8(%struct.adapter* %29, i64 %30)
  %32 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %33 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %36 = add nsw i64 %35, 2
  %37 = call i8* @usb_read8(%struct.adapter* %34, i64 %36)
  %38 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %39 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %42 = add nsw i64 %41, 2
  %43 = call i8* @usb_read8(%struct.adapter* %40, i64 %42)
  %44 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %45 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = load i64, i64* @REG_CR, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i8* @usb_read8(%struct.adapter* %46, i64 %48)
  %50 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %51 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  ret void
}

declare dso_local i32 @usb_write16(%struct.adapter*, i64, i32) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

declare dso_local i8* @usb_read8(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
