; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_rxdesc.c_process_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_rxdesc.c_process_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.signal_stat }
%struct.signal_stat = type { i32, i32, i32, i64 }
%union.recv_frame = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %union.recv_frame*)* @process_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rssi(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca %struct.signal_stat*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %7 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %8 = bitcast %union.recv_frame* %7 to %struct.TYPE_8__*
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.rx_pkt_attrib* %10, %struct.rx_pkt_attrib** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.signal_stat* %13, %struct.signal_stat** %6, align 8
  %14 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %15 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %20 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %22 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %24 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %27 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %31 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %35 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %41 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %44 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %42, %45
  %47 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %48 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
