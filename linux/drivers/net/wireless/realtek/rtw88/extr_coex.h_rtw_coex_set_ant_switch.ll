; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.h_rtw_coex_set_ant_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.h_rtw_coex_set_ant_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtw_dev*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32)* @rtw_coex_set_ant_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_set_ant_switch(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_chip_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  %10 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  store %struct.rtw_chip_info* %10, %struct.rtw_chip_info** %7, align 8
  %11 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %12 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.rtw_dev*, i32, i32)*, i32 (%struct.rtw_dev*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.rtw_dev*, i32, i32)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %20 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.rtw_dev*, i32, i32)*, i32 (%struct.rtw_dev*, i32, i32)** %22, align 8
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %23(%struct.rtw_dev* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
