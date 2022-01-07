; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_recv_linux.c_r8712_recv_indicatepkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_recv_linux.c_r8712_recv_indicatepkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.recv_priv }
%struct.recv_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32 }
%union.recv_frame = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32, i32, %struct.rx_pkt_attrib }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.rx_pkt_attrib = type { i32, i32 }

@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_recv_indicatepkt(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca %struct.recv_priv*, align 8
  %6 = alloca %struct.__queue*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.rx_pkt_attrib*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %9 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %10 = bitcast %union.recv_frame* %9 to %struct.TYPE_8__*
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store %struct.rx_pkt_attrib* %12, %struct.rx_pkt_attrib** %8, align 8
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 1
  store %struct.recv_priv* %14, %struct.recv_priv** %5, align 8
  %15 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %16 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %15, i32 0, i32 1
  store %struct.__queue* %16, %struct.__queue** %6, align 8
  %17 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %18 = bitcast %union.recv_frame* %17 to %struct.TYPE_8__*
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %84

25:                                               ; preds = %2
  %26 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %27 = bitcast %union.recv_frame* %26 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %34 = bitcast %union.recv_frame* %33 to %struct.TYPE_8__*
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @skb_set_tail_pointer(%struct.TYPE_9__* %40, i32 %43)
  %45 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %8, align 8
  %46 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %25
  %50 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %8, align 8
  %51 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %49, %25
  %59 = load i32, i32* @CHECKSUM_NONE, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct._adapter*, %struct._adapter** %3, align 8
  %64 = getelementptr inbounds %struct._adapter, %struct._adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = load %struct._adapter*, %struct._adapter** %3, align 8
  %70 = getelementptr inbounds %struct._adapter, %struct._adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @eth_type_trans(%struct.TYPE_9__* %68, i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = call i32 @netif_rx(%struct.TYPE_9__* %75)
  %77 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %78 = bitcast %union.recv_frame* %77 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %80, align 8
  %81 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %82 = load %struct.__queue*, %struct.__queue** %6, align 8
  %83 = call i32 @r8712_free_recvframe(%union.recv_frame* %81, %struct.__queue* %82)
  br label %96

84:                                               ; preds = %24
  %85 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %86 = icmp ne %union.recv_frame* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %89 = load %struct.__queue*, %struct.__queue** %6, align 8
  %90 = call i32 @r8712_free_recvframe(%union.recv_frame* %88, %struct.__queue* %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %93 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %62
  ret void
}

declare dso_local i32 @skb_set_tail_pointer(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @netif_rx(%struct.TYPE_9__*) #1

declare dso_local i32 @r8712_free_recvframe(%union.recv_frame*, %struct.__queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
