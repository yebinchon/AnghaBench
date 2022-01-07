; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_process_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_process_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.signal_stat }
%struct.signal_stat = type { i32, i32, i32, i64 }
%struct.recv_frame = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.recv_frame*)* @process_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rssi(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca %struct.signal_stat*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  %7 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %8 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %7, i32 0, i32 0
  store %struct.rx_pkt_attrib* %8, %struct.rx_pkt_attrib** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.signal_stat* %11, %struct.signal_stat** %6, align 8
  %12 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %13 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %18 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %20 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %22 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %25 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %29 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %33 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %39 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %42 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %40, %43
  %45 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %46 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
