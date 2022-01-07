; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_pre_pkt_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_pre_pkt_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i64 }
%struct.wl1271_tx_hw_descr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WLCORE_QUIRK_TX_PAD_LAST_FRAME = common dso_local global i32 0, align 4
@WL18XX_TX_CTRL_NOT_PADDED = common dso_local global i32 0, align 4
@WL12XX_BUS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wl1271*, i64, i64)* @wl18xx_pre_pkt_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wl18xx_pre_pkt_send(%struct.wl1271* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wl1271_tx_hw_descr*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WLCORE_QUIRK_TX_PAD_LAST_FRAME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %7, align 8
  %22 = sub nsw i64 %20, %21
  %23 = inttoptr i64 %22 to %struct.wl1271_tx_hw_descr*
  store %struct.wl1271_tx_hw_descr* %23, %struct.wl1271_tx_hw_descr** %8, align 8
  %24 = load i32, i32* @WL18XX_TX_CTRL_NOT_PADDED, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %8, align 8
  %27 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @WL12XX_BUS_BLOCK_SIZE, align 4
  %33 = call i64 @ALIGN(i64 %31, i32 %32)
  store i64 %33, i64* %4, align 8
  br label %36

34:                                               ; preds = %3
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %34, %15
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i64 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
