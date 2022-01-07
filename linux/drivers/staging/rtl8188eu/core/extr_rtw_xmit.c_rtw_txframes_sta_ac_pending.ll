; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_txframes_sta_ac_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_txframes_sta_ac_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pkt_attrib = type { i32, %struct.sta_info* }
%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq }
%struct.tx_servq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_txframes_sta_ac_pending(%struct.adapter* %0, %struct.pkt_attrib* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.tx_servq*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %4, align 8
  %8 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %9 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %12 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %11, i32 0, i32 1
  %13 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  store %struct.sta_info* %13, %struct.sta_info** %5, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %28 [
    i32 1, label %15
    i32 2, label %15
    i32 4, label %19
    i32 5, label %19
    i32 6, label %23
    i32 7, label %23
    i32 0, label %27
    i32 3, label %27
  ]

15:                                               ; preds = %2, %2
  %16 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store %struct.tx_servq* %18, %struct.tx_servq** %6, align 8
  br label %32

19:                                               ; preds = %2, %2
  %20 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store %struct.tx_servq* %22, %struct.tx_servq** %6, align 8
  br label %32

23:                                               ; preds = %2, %2
  %24 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store %struct.tx_servq* %26, %struct.tx_servq** %6, align 8
  br label %32

27:                                               ; preds = %2, %2
  br label %28

28:                                               ; preds = %2, %27
  %29 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.tx_servq* %31, %struct.tx_servq** %6, align 8
  br label %32

32:                                               ; preds = %28, %23, %19, %15
  %33 = load %struct.tx_servq*, %struct.tx_servq** %6, align 8
  %34 = getelementptr inbounds %struct.tx_servq, %struct.tx_servq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
