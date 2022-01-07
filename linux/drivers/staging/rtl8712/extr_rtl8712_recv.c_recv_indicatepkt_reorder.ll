; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_recv_indicatepkt_reorder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_recv_indicatepkt_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, i32 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.recv_reorder_ctrl*, %struct.rx_pkt_attrib }
%struct.recv_reorder_ctrl = type { i32, %struct.__queue }
%struct.__queue = type { i32 }
%struct.rx_pkt_attrib = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@REORDER_WAIT_TIME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, %union.recv_frame*)* @recv_indicatepkt_reorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_indicatepkt_reorder(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rx_pkt_attrib*, align 8
  %8 = alloca %struct.recv_reorder_ctrl*, align 8
  %9 = alloca %struct.__queue*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %union.recv_frame* %1, %union.recv_frame** %5, align 8
  %10 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %11 = bitcast %union.recv_frame* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store %struct.rx_pkt_attrib* %13, %struct.rx_pkt_attrib** %7, align 8
  %14 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %15 = bitcast %union.recv_frame* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %17, align 8
  store %struct.recv_reorder_ctrl* %18, %struct.recv_reorder_ctrl** %8, align 8
  %19 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %8, align 8
  %20 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %19, i32 0, i32 1
  store %struct.__queue* %20, %struct.__queue** %9, align 8
  %21 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %22 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %2
  %26 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %27 = call i32 @r8712_wlanhdr_to_ethhdr(%union.recv_frame* %26)
  %28 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %29 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct._adapter*, %struct._adapter** %4, align 8
  %34 = getelementptr inbounds %struct._adapter, %struct._adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct._adapter*, %struct._adapter** %4, align 8
  %39 = getelementptr inbounds %struct._adapter, %struct._adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct._adapter*, %struct._adapter** %4, align 8
  %44 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %45 = call i32 @r8712_recv_indicatepkt(%struct._adapter* %43, %union.recv_frame* %44)
  store i32 0, i32* %3, align 4
  br label %101

46:                                               ; preds = %37, %32
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %101

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.__queue*, %struct.__queue** %9, align 8
  %52 = getelementptr inbounds %struct.__queue, %struct.__queue* %51, i32 0, i32 0
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %8, align 8
  %56 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %7, align 8
  %57 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @check_indicate_seq(%struct.recv_reorder_ctrl* %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %94

62:                                               ; preds = %50
  %63 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %8, align 8
  %64 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %65 = call i32 @enqueue_reorder_recvframe(%struct.recv_reorder_ctrl* %63, %union.recv_frame* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %94

68:                                               ; preds = %62
  %69 = load %struct._adapter*, %struct._adapter** %4, align 8
  %70 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %8, align 8
  %71 = call i64 @r8712_recv_indicatepkts_in_order(%struct._adapter* %69, %struct.recv_reorder_ctrl* %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %8, align 8
  %75 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %74, i32 0, i32 0
  %76 = load i64, i64* @jiffies, align 8
  %77 = load i32, i32* @REORDER_WAIT_TIME, align 4
  %78 = call i64 @msecs_to_jiffies(i32 %77)
  %79 = add nsw i64 %76, %78
  %80 = call i32 @mod_timer(i32* %75, i64 %79)
  %81 = load %struct.__queue*, %struct.__queue** %9, align 8
  %82 = getelementptr inbounds %struct.__queue, %struct.__queue* %81, i32 0, i32 0
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %93

85:                                               ; preds = %68
  %86 = load %struct.__queue*, %struct.__queue** %9, align 8
  %87 = getelementptr inbounds %struct.__queue, %struct.__queue* %86, i32 0, i32 0
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %8, align 8
  %91 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %90, i32 0, i32 0
  %92 = call i32 @del_timer(i32* %91)
  br label %93

93:                                               ; preds = %85, %73
  store i32 0, i32* %3, align 4
  br label %101

94:                                               ; preds = %67, %61
  %95 = load %struct.__queue*, %struct.__queue** %9, align 8
  %96 = getelementptr inbounds %struct.__queue, %struct.__queue* %95, i32 0, i32 0
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %93, %46, %42
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @r8712_wlanhdr_to_ethhdr(%union.recv_frame*) #1

declare dso_local i32 @r8712_recv_indicatepkt(%struct._adapter*, %union.recv_frame*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @check_indicate_seq(%struct.recv_reorder_ctrl*, i32) #1

declare dso_local i32 @enqueue_reorder_recvframe(%struct.recv_reorder_ctrl*, %union.recv_frame*) #1

declare dso_local i64 @r8712_recv_indicatepkts_in_order(%struct._adapter*, %struct.recv_reorder_ctrl*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
