; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_recv_linux.c_rtw_recv_indicatepkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_recv_linux.c_rtw_recv_indicatepkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_11__, %struct.recv_priv }
%struct.TYPE_11__ = type { i32, i32 }
%struct.recv_priv = type { %struct.__queue }
%struct.__queue = type { i32 }
%union.recv_frame = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__*, i32, i32, i32, i32, i32, %struct.rx_pkt_attrib }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.rx_pkt_attrib = type { i32 }

@_module_recv_osdep_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"rtw_recv_indicatepkt():skb == NULL something wrong!!!!\0A\00", align 1
@_drv_info_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"rtw_recv_indicatepkt():skb != NULL !!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"rtw_recv_indicatepkt():precv_frame->u.hdr.rx_head =%p  precv_frame->hdr.rx_data =%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"precv_frame->hdr.rx_tail =%p precv_frame->u.hdr.rx_end =%p precv_frame->hdr.len =%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"\0A skb->head =%p skb->data =%p skb->tail =%p skb->end =%p skb->len =%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"\0A rtw_recv_indicatepkt :after rtw_os_recv_indicate_pkt!!!!\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_recv_indicatepkt(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca %struct.recv_priv*, align 8
  %7 = alloca %struct.__queue*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.rx_pkt_attrib*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %union.recv_frame* %1, %union.recv_frame** %5, align 8
  %10 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %11 = bitcast %union.recv_frame* %10 to %struct.TYPE_10__*
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  store %struct.rx_pkt_attrib* %13, %struct.rx_pkt_attrib** %9, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DBG_COUNTER(i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  store %struct.recv_priv* %20, %struct.recv_priv** %6, align 8
  %21 = load %struct.recv_priv*, %struct.recv_priv** %6, align 8
  %22 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %21, i32 0, i32 0
  store %struct.__queue* %22, %struct.__queue** %7, align 8
  %23 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %24 = bitcast %union.recv_frame* %23 to %struct.TYPE_10__*
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %8, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = icmp eq %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @_module_recv_osdep_c_, align 4
  %32 = load i32, i32* @_drv_err_, align 4
  %33 = call i32 @RT_TRACE(i32 %31, i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %127

34:                                               ; preds = %2
  %35 = load i32, i32* @_module_recv_osdep_c_, align 4
  %36 = load i32, i32* @_drv_info_, align 4
  %37 = call i32 @RT_TRACE(i32 %35, i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @_module_recv_osdep_c_, align 4
  %39 = load i32, i32* @_drv_info_, align 4
  %40 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %41 = bitcast %union.recv_frame* %40 to %struct.TYPE_10__*
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %46 = bitcast %union.recv_frame* %45 to %struct.TYPE_10__*
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @RT_TRACE(i32 %38, i32 %39, i8* %51)
  %53 = load i32, i32* @_module_recv_osdep_c_, align 4
  %54 = load i32, i32* @_drv_info_, align 4
  %55 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %56 = bitcast %union.recv_frame* %55 to %struct.TYPE_10__*
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %61 = bitcast %union.recv_frame* %60 to %struct.TYPE_10__*
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %66 = bitcast %union.recv_frame* %65 to %struct.TYPE_10__*
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @RT_TRACE(i32 %53, i32 %54, i8* %71)
  %73 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %74 = bitcast %union.recv_frame* %73 to %struct.TYPE_10__*
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %82 = bitcast %union.recv_frame* %81 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @skb_set_tail_pointer(%struct.TYPE_12__* %80, i32 %85)
  %87 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %88 = bitcast %union.recv_frame* %87 to %struct.TYPE_10__*
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @_module_recv_osdep_c_, align 4
  %95 = load i32, i32* @_drv_info_, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %103 = call i32 @skb_tail_pointer(%struct.TYPE_12__* %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = call i32 @skb_end_pointer(%struct.TYPE_12__* %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @RT_TRACE(i32 %94, i32 %95, i8* %110)
  %112 = load %struct.adapter*, %struct.adapter** %4, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %114 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %115 = call i32 @rtw_os_recv_indicate_pkt(%struct.adapter* %112, %struct.TYPE_12__* %113, %struct.rx_pkt_attrib* %114)
  %116 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %117 = bitcast %union.recv_frame* %116 to %struct.TYPE_10__*
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %119, align 8
  %120 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %121 = load %struct.__queue*, %struct.__queue** %7, align 8
  %122 = call i32 @rtw_free_recvframe(%union.recv_frame* %120, %struct.__queue* %121)
  %123 = load i32, i32* @_module_recv_osdep_c_, align 4
  %124 = load i32, i32* @_drv_info_, align 4
  %125 = call i32 @RT_TRACE(i32 %123, i32 %124, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* @_SUCCESS, align 4
  store i32 %126, i32* %3, align 4
  br label %137

127:                                              ; preds = %30
  %128 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %129 = load %struct.__queue*, %struct.__queue** %7, align 8
  %130 = call i32 @rtw_free_recvframe(%union.recv_frame* %128, %struct.__queue* %129)
  %131 = load %struct.adapter*, %struct.adapter** %4, align 8
  %132 = getelementptr inbounds %struct.adapter, %struct.adapter* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @DBG_COUNTER(i32 %134)
  %136 = load i32, i32* @_FAIL, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %127, %34
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @DBG_COUNTER(i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.TYPE_12__*) #1

declare dso_local i32 @skb_end_pointer(%struct.TYPE_12__*) #1

declare dso_local i32 @rtw_os_recv_indicate_pkt(%struct.adapter*, %struct.TYPE_12__*, %struct.rx_pkt_attrib*) #1

declare dso_local i32 @rtw_free_recvframe(%union.recv_frame*, %struct.__queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
