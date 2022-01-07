; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_rxdesc.c_process_link_qual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_rxdesc.c_process_link_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.signal_stat }
%struct.signal_stat = type { i32, i32, i32, i64 }
%union.recv_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %union.recv_frame*)* @process_link_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_link_qual(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca %struct.signal_stat*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %7 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %8 = icmp ne %union.recv_frame* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = icmp ne %struct.adapter* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %56

13:                                               ; preds = %9
  %14 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %15 = bitcast %union.recv_frame* %14 to %struct.TYPE_6__*
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.rx_pkt_attrib* %17, %struct.rx_pkt_attrib** %5, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.signal_stat* %20, %struct.signal_stat** %6, align 8
  %21 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %22 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %27 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %29 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %31 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %13
  %33 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %34 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %38 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %42 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %48 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %51 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %49, %52
  %54 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %55 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %32, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
