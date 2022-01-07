; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_qp_async_error_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_qp_async_error_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.smbd_connection = type { i32 }

@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s on device %s info %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event*, i8*)* @smbd_qp_async_error_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbd_qp_async_error_upcall(%struct.ib_event* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.smbd_connection*, align 8
  store %struct.ib_event* %0, %struct.ib_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.smbd_connection*
  store %struct.smbd_connection* %7, %struct.smbd_connection** %5, align 8
  %8 = load i32, i32* @ERR, align 4
  %9 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %10 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ib_event_msg(i32 %11)
  %13 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %14 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %19 = call i32 @log_rdma_event(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17, %struct.smbd_connection* %18)
  %20 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %21 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %26 [
    i32 129, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %2, %2
  %24 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %25 = call i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection* %24)
  br label %26

26:                                               ; preds = %2, %23
  br label %27

27:                                               ; preds = %26
  ret void
}

declare dso_local i32 @log_rdma_event(i32, i8*, i32, i32, %struct.smbd_connection*) #1

declare dso_local i32 @ib_event_msg(i32) #1

declare dso_local i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
