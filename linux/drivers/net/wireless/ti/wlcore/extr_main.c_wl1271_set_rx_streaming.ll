; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_set_rx_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_set_rx_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }

@WLVIF_FLAG_RX_STREAMING_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, i32)* @wl1271_set_rx_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_set_rx_streaming(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %9 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @wl1271_acx_ps_rx_streaming(%struct.wl1271* %8, %struct.wl12xx_vif* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %29

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* @WLVIF_FLAG_RX_STREAMING_STARTED, align 4
  %20 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %21 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  br label %28

23:                                               ; preds = %15
  %24 = load i32, i32* @WLVIF_FLAG_RX_STREAMING_STARTED, align 4
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %26 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @wl1271_acx_ps_rx_streaming(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
