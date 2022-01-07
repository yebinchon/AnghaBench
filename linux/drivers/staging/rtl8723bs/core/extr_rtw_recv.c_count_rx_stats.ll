; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_count_rx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_count_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, %struct.recv_priv }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.recv_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.sta_info*, %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32 }
%struct.sta_info = type { %struct.stainfo_stats }
%struct.stainfo_stats = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @count_rx_stats(%struct.adapter* %0, %union.recv_frame* %1, %struct.sta_info* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.stainfo_stats*, align 8
  %10 = alloca %struct.rx_pkt_attrib*, align 8
  %11 = alloca %struct.recv_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %union.recv_frame* %1, %union.recv_frame** %5, align 8
  store %struct.sta_info* %2, %struct.sta_info** %6, align 8
  store %struct.sta_info* null, %struct.sta_info** %8, align 8
  store %struct.stainfo_stats* null, %struct.stainfo_stats** %9, align 8
  %12 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %13 = bitcast %union.recv_frame* %12 to %struct.TYPE_8__*
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store %struct.rx_pkt_attrib* %15, %struct.rx_pkt_attrib** %10, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  store %struct.recv_priv* %17, %struct.recv_priv** %11, align 8
  %18 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %19 = call i32 @get_recvframe_len(%union.recv_frame* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.recv_priv*, %struct.recv_priv** %11, align 8
  %22 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %32 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @MacAddr_isBcst(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %3
  %37 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %10, align 8
  %38 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IS_MCAST(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %36, %3
  %50 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %51 = icmp ne %struct.sta_info* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  store %struct.sta_info* %53, %struct.sta_info** %8, align 8
  br label %60

54:                                               ; preds = %49
  %55 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %56 = bitcast %union.recv_frame* %55 to %struct.TYPE_8__*
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.sta_info*, %struct.sta_info** %58, align 8
  store %struct.sta_info* %59, %struct.sta_info** %8, align 8
  br label %60

60:                                               ; preds = %54, %52
  %61 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %62 = icmp ne %struct.sta_info* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 0
  store %struct.stainfo_stats* %65, %struct.stainfo_stats** %9, align 8
  %66 = load %struct.stainfo_stats*, %struct.stainfo_stats** %9, align 8
  %67 = getelementptr inbounds %struct.stainfo_stats, %struct.stainfo_stats* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.stainfo_stats*, %struct.stainfo_stats** %9, align 8
  %72 = getelementptr inbounds %struct.stainfo_stats, %struct.stainfo_stats* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %63, %60
  %76 = load %struct.adapter*, %struct.adapter** %4, align 8
  %77 = call i32 @traffic_check_for_leave_lps(%struct.adapter* %76, i32 0, i32 0)
  ret void
}

declare dso_local i32 @get_recvframe_len(%union.recv_frame*) #1

declare dso_local i32 @MacAddr_isBcst(i32) #1

declare dso_local i32 @IS_MCAST(i32) #1

declare dso_local i32 @traffic_check_for_leave_lps(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
