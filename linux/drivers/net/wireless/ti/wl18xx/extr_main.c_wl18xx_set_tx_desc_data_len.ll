; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_tx_desc_data_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_tx_desc_data_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl1271_tx_hw_descr = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.sk_buff = type { i32 }

@WLCORE_QUIRK_TX_PAD_LAST_FRAME = common dso_local global i32 0, align 4
@WL18XX_TX_CTRL_NOT_PADDED = common dso_local global i64 0, align 8
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"tx_fill_hdr: hlid: %d len: %d life: %d mem: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, %struct.sk_buff*)* @wl18xx_set_tx_desc_data_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl18xx_set_tx_desc_data_len(%struct.wl1271* %0, %struct.wl1271_tx_hw_descr* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl1271_tx_hw_descr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl1271_tx_hw_descr* %1, %struct.wl1271_tx_hw_descr** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cpu_to_le16(i32 %9)
  %11 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %12 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WLCORE_QUIRK_TX_PAD_LAST_FRAME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i64, i64* @WL18XX_TX_CTRL_NOT_PADDED, align 8
  %21 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %22 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 %20, i64* %23, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %26 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @DEBUG_TX, align 4
  %30 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %31 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %34 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %38 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %5, align 8
  %42 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @wl1271_debug(i32 %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %40, i32 %44)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
