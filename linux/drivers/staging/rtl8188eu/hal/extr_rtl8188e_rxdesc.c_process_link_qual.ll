; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_process_link_qual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_process_link_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.signal_stat }
%struct.signal_stat = type { i32, i32, i32, i64 }
%struct.recv_frame = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.recv_frame*)* @process_link_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_link_qual(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca %struct.signal_stat*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  %7 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %8 = icmp ne %struct.recv_frame* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = icmp ne %struct.adapter* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %54

13:                                               ; preds = %9
  %14 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %15 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %14, i32 0, i32 0
  store %struct.rx_pkt_attrib* %15, %struct.rx_pkt_attrib** %5, align 8
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.signal_stat* %18, %struct.signal_stat** %6, align 8
  %19 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %20 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %25 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %27 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %29 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %23, %13
  %31 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %32 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %36 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %40 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %46 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %49 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %47, %50
  %52 = load %struct.signal_stat*, %struct.signal_stat** %6, align 8
  %53 = getelementptr inbounds %struct.signal_stat, %struct.signal_stat* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %30, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
