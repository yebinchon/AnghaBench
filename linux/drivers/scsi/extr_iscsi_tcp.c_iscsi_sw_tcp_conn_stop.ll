; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_conn*, i32)* @iscsi_sw_tcp_conn_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_conn_stop(%struct.iscsi_cls_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_tcp_conn*, align 8
  %7 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %8 = alloca %struct.socket*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %9, i32 0, i32 0
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %5, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 0
  %14 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %13, align 8
  store %struct.iscsi_tcp_conn* %14, %struct.iscsi_tcp_conn** %6, align 8
  %15 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %15, i32 0, i32 0
  %17 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %16, align 8
  store %struct.iscsi_sw_tcp_conn* %17, %struct.iscsi_sw_tcp_conn** %7, align 8
  %18 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %7, align 8
  %19 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %18, i32 0, i32 0
  %20 = load %struct.socket*, %struct.socket** %19, align 8
  store %struct.socket* %20, %struct.socket** %8, align 8
  %21 = load %struct.socket*, %struct.socket** %8, align 8
  %22 = icmp ne %struct.socket* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %42

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = load %struct.socket*, %struct.socket** %8, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.socket*, %struct.socket** %8, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @sk_sleep(%struct.TYPE_2__* %32)
  %34 = call i32 @wake_up_interruptible(i32 %33)
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %36 = call i32 @iscsi_suspend_tx(%struct.iscsi_conn* %35)
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %38 = call i32 @iscsi_sw_tcp_release_conn(%struct.iscsi_conn* %37)
  %39 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @iscsi_conn_stop(%struct.iscsi_cls_conn* %39, i32 %40)
  br label %42

42:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32) #1

declare dso_local i32 @sk_sleep(%struct.TYPE_2__*) #1

declare dso_local i32 @iscsi_suspend_tx(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_sw_tcp_release_conn(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_conn_stop(%struct.iscsi_cls_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
