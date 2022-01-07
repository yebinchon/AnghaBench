; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_rx.c_wlcore_rx_get_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_rx.c_wlcore_rx_get_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN = common dso_local global i32 0, align 4
@ALIGNED_RX_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@ALIGNED_RX_BUF_SIZE_SHIFT = common dso_local global i32 0, align 4
@RX_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@RX_BUF_SIZE_SHIFT_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32)* @wlcore_rx_get_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_rx_get_buf_size(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ALIGNED_RX_BUF_SIZE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @ALIGNED_RX_BUF_SIZE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RX_BUF_SIZE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @RX_BUF_SIZE_SHIFT_DIV, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
