; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.h_rtw_coex_set_wl_rx_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.h_rtw_coex_set_wl_rx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtw_dev*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw_coex_set_wl_rx_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_set_wl_rx_gain(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_chip_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  %8 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  store %struct.rtw_chip_info* %8, %struct.rtw_chip_info** %5, align 8
  %9 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.rtw_dev*, i32)*, i32 (%struct.rtw_dev*, i32)** %12, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 %13(%struct.rtw_dev* %14, i32 %15)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
