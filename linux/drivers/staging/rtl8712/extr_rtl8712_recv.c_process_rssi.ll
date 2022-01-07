; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_process_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_process_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.smooth_rssi_data }
%struct.smooth_rssi_data = type { i64, i32*, i64, i32 }
%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32 }

@PHY_RSSI_SLID_WIN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %union.recv_frame*)* @process_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rssi(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rx_pkt_attrib*, align 8
  %8 = alloca %struct.smooth_rssi_data*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %9 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %10 = bitcast %union.recv_frame* %9 to %struct.TYPE_5__*
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.rx_pkt_attrib* %12, %struct.rx_pkt_attrib** %7, align 8
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store %struct.smooth_rssi_data* %15, %struct.smooth_rssi_data** %8, align 8
  %16 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %17 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %24 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %25 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %27 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %30 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %36 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %22, %2
  %40 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %41 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %44 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %48 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %51 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %54 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %49, i32* %57, align 4
  %58 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %59 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %39
  %64 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %65 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %39
  %67 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %68 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %72 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = udiv i64 %70, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load %struct._adapter*, %struct._adapter** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @translate2dbm(%struct._adapter* %76, i32 %77)
  %79 = load %struct._adapter*, %struct._adapter** %3, align 8
  %80 = getelementptr inbounds %struct._adapter, %struct._adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  ret void
}

declare dso_local i64 @translate2dbm(%struct._adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
