; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_set_tx_desc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_set_tx_desc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.wl1271_tx_hw_descr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, i32, i32)* @wlcore_hw_set_tx_desc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_hw_set_tx_desc_blocks(%struct.wl1271* %0, %struct.wl1271_tx_hw_descr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl1271_tx_hw_descr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl1271_tx_hw_descr* %1, %struct.wl1271_tx_hw_descr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, i32, i32)**
  %14 = load void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, i32, i32)*, void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, i32, i32)** %13, align 8
  %15 = icmp ne void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, i32, i32)* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = call i32 @BUG_ON(i32 1)
  br label %18

18:                                               ; preds = %16, %4
  %19 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, i32, i32)**
  %24 = load void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, i32, i32)*, void (%struct.wl1271*, %struct.wl1271_tx_hw_descr*, i32, i32)** %23, align 8
  %25 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %26 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  call void %24(%struct.wl1271* %25, %struct.wl1271_tx_hw_descr* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
