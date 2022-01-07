; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_enqueue_reorder_recvframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_enqueue_reorder_recvframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_reorder_ctrl = type { %struct.__queue }
%struct.__queue = type { i32 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enqueue_reorder_recvframe(%struct.recv_reorder_ctrl* %0, %union.recv_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.recv_reorder_ctrl*, align 8
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca %struct.rx_pkt_attrib*, align 8
  %7 = alloca %struct.__queue*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %union.recv_frame*, align 8
  %11 = alloca %struct.rx_pkt_attrib*, align 8
  store %struct.recv_reorder_ctrl* %0, %struct.recv_reorder_ctrl** %4, align 8
  store %union.recv_frame* %1, %union.recv_frame** %5, align 8
  %12 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %13 = bitcast %union.recv_frame* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store %struct.rx_pkt_attrib* %15, %struct.rx_pkt_attrib** %6, align 8
  %16 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %17 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %16, i32 0, i32 0
  store %struct.__queue* %17, %struct.__queue** %7, align 8
  %18 = load %struct.__queue*, %struct.__queue** %7, align 8
  %19 = call %struct.list_head* @get_list_head(%struct.__queue* %18)
  store %struct.list_head* %19, %struct.list_head** %8, align 8
  %20 = load %struct.list_head*, %struct.list_head** %8, align 8
  %21 = call %struct.list_head* @get_next(%struct.list_head* %20)
  store %struct.list_head* %21, %struct.list_head** %9, align 8
  br label %22

22:                                               ; preds = %55, %2
  %23 = load %struct.list_head*, %struct.list_head** %8, align 8
  %24 = load %struct.list_head*, %struct.list_head** %9, align 8
  %25 = icmp ne %struct.list_head* %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load %struct.list_head*, %struct.list_head** %9, align 8
  %28 = bitcast %struct.list_head* %27 to %union.recv_frame*
  store %union.recv_frame* %28, %union.recv_frame** %10, align 8
  %29 = load %union.recv_frame*, %union.recv_frame** %10, align 8
  %30 = bitcast %union.recv_frame* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store %struct.rx_pkt_attrib* %32, %struct.rx_pkt_attrib** %11, align 8
  %33 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %11, align 8
  %34 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %37 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @SN_LESS(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load %struct.list_head*, %struct.list_head** %9, align 8
  %43 = call %struct.list_head* @get_next(%struct.list_head* %42)
  store %struct.list_head* %43, %struct.list_head** %9, align 8
  br label %55

44:                                               ; preds = %26
  %45 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %11, align 8
  %46 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %49 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @SN_EQUAL(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %68

54:                                               ; preds = %44
  br label %56

55:                                               ; preds = %41
  br label %22

56:                                               ; preds = %54, %22
  %57 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %58 = bitcast %union.recv_frame* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @list_del_init(i32* %60)
  %62 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %63 = bitcast %union.recv_frame* %62 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.list_head*, %struct.list_head** %9, align 8
  %67 = call i32 @list_add_tail(i32* %65, %struct.list_head* %66)
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %56, %53
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.list_head* @get_list_head(%struct.__queue*) #1

declare dso_local %struct.list_head* @get_next(%struct.list_head*) #1

declare dso_local i64 @SN_LESS(i32, i32) #1

declare dso_local i64 @SN_EQUAL(i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
