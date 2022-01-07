; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_process_link_qual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_process_link_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.smooth_rssi_data }
%struct.smooth_rssi_data = type { i64, i32*, i64, i32 }
%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i64 }

@PHY_LINKQUALITY_SLID_WIN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %union.recv_frame*)* @process_link_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_link_qual(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rx_pkt_attrib*, align 8
  %8 = alloca %struct.smooth_rssi_data*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.smooth_rssi_data* %11, %struct.smooth_rssi_data** %8, align 8
  %12 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %13 = icmp ne %union.recv_frame* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct._adapter*, %struct._adapter** %3, align 8
  %16 = icmp ne %struct._adapter* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %2
  br label %96

18:                                               ; preds = %14
  %19 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %20 = bitcast %union.recv_frame* %19 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.rx_pkt_attrib* %22, %struct.rx_pkt_attrib** %7, align 8
  %23 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %24 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %18
  %28 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %29 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i64, i64* @PHY_LINKQUALITY_SLID_WIN_MAX, align 8
  %33 = icmp uge i64 %30, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load i64, i64* @PHY_LINKQUALITY_SLID_WIN_MAX, align 8
  %36 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %37 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %39 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %42 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %48 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %34, %27
  %52 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %53 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %56 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 8
  %61 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %62 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %66 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %69 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %64, i32* %72, align 4
  %73 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %74 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PHY_LINKQUALITY_SLID_WIN_MAX, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %51
  %79 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %80 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %51
  %82 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %83 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = load %struct.smooth_rssi_data*, %struct.smooth_rssi_data** %8, align 8
  %87 = getelementptr inbounds %struct.smooth_rssi_data, %struct.smooth_rssi_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = udiv i64 %85, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct._adapter*, %struct._adapter** %3, align 8
  %94 = getelementptr inbounds %struct._adapter, %struct._adapter* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %17, %81, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
