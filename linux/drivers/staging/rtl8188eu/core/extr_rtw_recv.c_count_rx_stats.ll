; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_count_rx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_count_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, %struct.recv_priv }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.recv_priv = type { i32 }
%struct.recv_frame = type { %struct.sta_info*, %struct.TYPE_4__*, %struct.rx_pkt_attrib }
%struct.TYPE_4__ = type { i32 }
%struct.rx_pkt_attrib = type { i32 }
%struct.sta_info = type { %struct.stainfo_stats }
%struct.stainfo_stats = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.recv_frame*, %struct.sta_info*)* @count_rx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_rx_stats(%struct.adapter* %0, %struct.recv_frame* %1, %struct.sta_info* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.recv_frame*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.stainfo_stats*, align 8
  %10 = alloca %struct.rx_pkt_attrib*, align 8
  %11 = alloca %struct.recv_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %5, align 8
  store %struct.sta_info* %2, %struct.sta_info** %6, align 8
  store %struct.sta_info* null, %struct.sta_info** %8, align 8
  store %struct.stainfo_stats* null, %struct.stainfo_stats** %9, align 8
  %12 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %13 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %12, i32 0, i32 2
  store %struct.rx_pkt_attrib* %13, %struct.rx_pkt_attrib** %10, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  store %struct.recv_priv* %15, %struct.recv_priv** %11, align 8
  %16 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %17 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.recv_priv*, %struct.recv_priv** %11, align 8
  %23 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %33 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @is_multicast_ether_addr(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %3
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %3
  %45 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %46 = icmp ne %struct.sta_info* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  store %struct.sta_info* %48, %struct.sta_info** %8, align 8
  br label %53

49:                                               ; preds = %44
  %50 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %51 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %50, i32 0, i32 0
  %52 = load %struct.sta_info*, %struct.sta_info** %51, align 8
  store %struct.sta_info* %52, %struct.sta_info** %8, align 8
  br label %53

53:                                               ; preds = %49, %47
  %54 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %55 = icmp ne %struct.sta_info* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 0
  store %struct.stainfo_stats* %58, %struct.stainfo_stats** %9, align 8
  %59 = load %struct.stainfo_stats*, %struct.stainfo_stats** %9, align 8
  %60 = getelementptr inbounds %struct.stainfo_stats, %struct.stainfo_stats* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.stainfo_stats*, %struct.stainfo_stats** %9, align 8
  %65 = getelementptr inbounds %struct.stainfo_stats, %struct.stainfo_stats* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
