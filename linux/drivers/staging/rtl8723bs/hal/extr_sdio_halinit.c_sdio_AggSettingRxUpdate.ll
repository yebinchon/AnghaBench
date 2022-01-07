; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_sdio_AggSettingRxUpdate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_sdio_AggSettingRxUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32 }

@REG_TRXDMA_CTRL = common dso_local global i32 0, align 4
@RXDMA_AGG_EN = common dso_local global i32 0, align 4
@RXDMA_AGG_MODE_EN = common dso_local global i32 0, align 4
@REG_RXDMA_MODE_CTRL_8723B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @sdio_AggSettingRxUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_AggSettingRxUpdate(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 3, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %8)
  store %struct.hal_com_data* %9, %struct.hal_com_data** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = load i32, i32* @REG_TRXDMA_CTRL, align 4
  %12 = call i32 @rtw_read8(%struct.adapter* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RXDMA_AGG_EN, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i32, i32* @REG_TRXDMA_CTRL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @rtw_write8(%struct.adapter* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @RXDMA_AGG_MODE_EN, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 2
  %25 = and i32 %24, 12
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 4
  %30 = and i32 %29, 48
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = load i32, i32* @REG_RXDMA_MODE_CTRL_8723B, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @rtw_write8(%struct.adapter* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
