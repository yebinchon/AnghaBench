; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_host_cfg_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_host_cfg_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@HOST_IF_CFG_RX_FIFO_ENABLE = common dso_local global i32 0, align 4
@HOST_IF_CFG_ADD_RX_ALIGNMENT = common dso_local global i32 0, align 4
@WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN = common dso_local global i32 0, align 4
@HOST_IF_CFG_TX_PAD_TO_SDIO_BLK = common dso_local global i32 0, align 4
@WL12XX_BUS_BLOCK_SIZE = common dso_local global i32 0, align 4
@WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN = common dso_local global i32 0, align 4
@HOST_IF_CFG_RX_PAD_TO_SDIO_BLK = common dso_local global i32 0, align 4
@WL18XX_HOST_IF_LEN_SIZE_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32)* @wl18xx_set_host_cfg_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_set_host_cfg_bitmap(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @HOST_IF_CFG_RX_FIFO_ENABLE, align 4
  %10 = load i32, i32* @HOST_IF_CFG_ADD_RX_ALIGNMENT, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @HOST_IF_CFG_TX_PAD_TO_SDIO_BLK, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @WL12XX_BUS_BLOCK_SIZE, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %25 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @HOST_IF_CFG_RX_PAD_TO_SDIO_BLK, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @WL12XX_BUS_BLOCK_SIZE, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @WL18XX_HOST_IF_LEN_SIZE_FIELD, align 4
  %41 = call i32 @wl18xx_acx_host_if_cfg_bitmap(%struct.wl1271* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @wl18xx_acx_host_if_cfg_bitmap(%struct.wl1271*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
