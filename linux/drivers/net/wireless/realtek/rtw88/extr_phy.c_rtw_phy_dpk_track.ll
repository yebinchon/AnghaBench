; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_dpk_track.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_dpk_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtw_dev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_phy_dpk_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_dpk_track(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_chip_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %4 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %4, i32 0, i32 0
  %6 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  store %struct.rtw_chip_info* %6, %struct.rtw_chip_info** %3, align 8
  %7 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.rtw_dev*)*, i32 (%struct.rtw_dev*)** %10, align 8
  %12 = icmp ne i32 (%struct.rtw_dev*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %15 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.rtw_dev*)*, i32 (%struct.rtw_dev*)** %17, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %20 = call i32 %18(%struct.rtw_dev* %19)
  br label %21

21:                                               ; preds = %13, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
