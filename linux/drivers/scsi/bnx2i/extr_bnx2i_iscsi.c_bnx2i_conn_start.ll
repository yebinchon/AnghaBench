; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.bnx2i_conn* }
%struct.bnx2i_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@EP_STATE_ULP_UPDATE_START = common dso_local global i64 0, align 8
@bnx2i_ep_ofld_timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_conn*)* @bnx2i_conn_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_conn_start(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.bnx2i_conn*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %5 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %5, i32 0, i32 0
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_conn* %7, %struct.iscsi_conn** %3, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 0
  %10 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %9, align 8
  store %struct.bnx2i_conn* %10, %struct.bnx2i_conn** %4, align 8
  %11 = load i64, i64* @EP_STATE_ULP_UPDATE_START, align 8
  %12 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %13 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i64 %11, i64* %15, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %17 = call i32 @bnx2i_update_iscsi_conn(%struct.iscsi_conn* %16)
  %18 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* @bnx2i_ep_ofld_timer, align 4
  %23 = call i32 @timer_setup(%struct.TYPE_6__* %21, i32 %22, i32 0)
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @jiffies, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i64 %28, i64* %33, align 8
  %34 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = call i32 @add_timer(%struct.TYPE_6__* %37)
  %39 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %45 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EP_STATE_ULP_UPDATE_START, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @wait_event_interruptible(i32 %43, i32 %51)
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %1
  %57 = load i32, i32* @current, align 4
  %58 = call i32 @flush_signals(i32 %57)
  br label %59

59:                                               ; preds = %56, %1
  %60 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %61 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = call i32 @del_timer_sync(%struct.TYPE_6__* %63)
  %65 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %66 = call i32 @iscsi_conn_start(%struct.iscsi_cls_conn* %65)
  ret i32 0
}

declare dso_local i32 @bnx2i_update_iscsi_conn(%struct.iscsi_conn*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @iscsi_conn_start(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
