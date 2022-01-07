; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_add_cmd_to_immediate_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_add_cmd_to_immediate_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32 }
%struct.iscsi_conn = type { i32, i32, i32, i32 }
%struct.iscsi_queue_req = type { i32, i32, %struct.iscsi_cmd* }

@lio_qr_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for struct iscsi_queue_req\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_queue_req*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @lio_qr_cache, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.iscsi_queue_req* @kmem_cache_zalloc(i32 %8, i32 %9)
  store %struct.iscsi_queue_req* %10, %struct.iscsi_queue_req** %7, align 8
  %11 = load %struct.iscsi_queue_req*, %struct.iscsi_queue_req** %7, align 8
  %12 = icmp ne %struct.iscsi_queue_req* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.iscsi_queue_req*, %struct.iscsi_queue_req** %7, align 8
  %17 = getelementptr inbounds %struct.iscsi_queue_req, %struct.iscsi_queue_req* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %20 = load %struct.iscsi_queue_req*, %struct.iscsi_queue_req** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_queue_req, %struct.iscsi_queue_req* %20, i32 0, i32 2
  store %struct.iscsi_cmd* %19, %struct.iscsi_cmd** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.iscsi_queue_req*, %struct.iscsi_queue_req** %7, align 8
  %24 = getelementptr inbounds %struct.iscsi_queue_req, %struct.iscsi_queue_req* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.iscsi_queue_req*, %struct.iscsi_queue_req** %7, align 8
  %29 = getelementptr inbounds %struct.iscsi_queue_req, %struct.iscsi_queue_req* %28, i32 0, i32 0
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 3
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %33, i32 0, i32 0
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %36, i32 0, i32 2
  %38 = call i32 @atomic_set(i32* %37, i32 1)
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  %44 = call i32 @wake_up(i32* %43)
  br label %45

45:                                               ; preds = %15, %13
  ret void
}

declare dso_local %struct.iscsi_queue_req* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
