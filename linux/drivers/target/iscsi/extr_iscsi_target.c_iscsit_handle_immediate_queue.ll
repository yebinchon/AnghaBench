; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_immediate_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_immediate_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.iscsit_transport* }
%struct.iscsit_transport = type { i32 (%struct.iscsi_conn.0*, %struct.iscsi_cmd*, i32)* }
%struct.iscsi_conn.0 = type opaque
%struct.iscsi_cmd = type opaque
%struct.iscsi_queue_req = type { i32, %struct.iscsi_cmd.1* }
%struct.iscsi_cmd.1 = type { i32 }

@lio_qr_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*)* @iscsit_handle_immediate_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_handle_immediate_queue(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsit_transport*, align 8
  %5 = alloca %struct.iscsi_queue_req*, align 8
  %6 = alloca %struct.iscsi_cmd.1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 1
  %11 = load %struct.iscsit_transport*, %struct.iscsit_transport** %10, align 8
  store %struct.iscsit_transport* %11, %struct.iscsit_transport** %4, align 8
  br label %12

12:                                               ; preds = %42, %1
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = call %struct.iscsi_queue_req* @iscsit_get_cmd_from_immediate_queue(%struct.iscsi_conn* %13)
  store %struct.iscsi_queue_req* %14, %struct.iscsi_queue_req** %5, align 8
  %15 = icmp ne %struct.iscsi_queue_req* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 0
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.iscsi_queue_req*, %struct.iscsi_queue_req** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_queue_req, %struct.iscsi_queue_req* %20, i32 0, i32 1
  %22 = load %struct.iscsi_cmd.1*, %struct.iscsi_cmd.1** %21, align 8
  store %struct.iscsi_cmd.1* %22, %struct.iscsi_cmd.1** %6, align 8
  %23 = load %struct.iscsi_queue_req*, %struct.iscsi_queue_req** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_queue_req, %struct.iscsi_queue_req* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @lio_qr_cache, align 4
  %27 = load %struct.iscsi_queue_req*, %struct.iscsi_queue_req** %5, align 8
  %28 = call i32 @kmem_cache_free(i32 %26, %struct.iscsi_queue_req* %27)
  %29 = load %struct.iscsit_transport*, %struct.iscsit_transport** %4, align 8
  %30 = getelementptr inbounds %struct.iscsit_transport, %struct.iscsit_transport* %29, i32 0, i32 0
  %31 = load i32 (%struct.iscsi_conn.0*, %struct.iscsi_cmd*, i32)*, i32 (%struct.iscsi_conn.0*, %struct.iscsi_cmd*, i32)** %30, align 8
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %33 = bitcast %struct.iscsi_conn* %32 to %struct.iscsi_conn.0*
  %34 = load %struct.iscsi_cmd.1*, %struct.iscsi_cmd.1** %6, align 8
  %35 = bitcast %struct.iscsi_cmd.1* %34 to %struct.iscsi_cmd*
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %31(%struct.iscsi_conn.0* %33, %struct.iscsi_cmd* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %16
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %16
  br label %12

43:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.iscsi_queue_req* @iscsit_get_cmd_from_immediate_queue(%struct.iscsi_conn*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.iscsi_queue_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
