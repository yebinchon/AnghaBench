; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_conn_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_conn_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i32, i64, i32, i32, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, %struct.iscsi_conn*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ISCSI_CONN_CLEANUP_WAIT = common dso_local global i32 0, align 4
@ISCSI_STATE_TERMINATE = common dso_local global i32 0, align 4
@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_conn_teardown(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %5 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %5, i32 0, i32 0
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_conn* %7, %struct.iscsi_conn** %3, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 7
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  store %struct.iscsi_session* %10, %struct.iscsi_session** %4, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 6
  %13 = call i32 @del_timer_sync(i32* %12)
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load i32, i32* @ISCSI_CONN_CLEANUP_WAIT, align 4
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 2
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %24, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %27 = icmp eq %struct.iscsi_conn* %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load i32, i32* @ISCSI_STATE_TERMINATE, align 4
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 4
  %34 = call i32 @wake_up(i32* %33)
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %40 = call i32 @iscsi_suspend_tx(%struct.iscsi_conn* %39)
  %41 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %45 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %48 = call i32 @get_order(i32 %47)
  %49 = call i32 @free_pages(i64 %46, i32 %48)
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @kfree(i32 %52)
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %55 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kfree(i32 %56)
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %59 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %58, i32 0, i32 3
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %62 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %65 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %64, i32 0, i32 0
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 @kfifo_in(i32* %63, i8* %66, i32 8)
  %68 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %69 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %68, i32 0, i32 3
  %70 = call i32 @spin_unlock_bh(i32* %69)
  %71 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %72 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %71, i32 0, i32 2
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %72, align 8
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %75 = icmp eq %struct.iscsi_conn* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %35
  %77 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %78 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %77, i32 0, i32 2
  store %struct.iscsi_conn* null, %struct.iscsi_conn** %78, align 8
  br label %79

79:                                               ; preds = %76, %35
  %80 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %81 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock_bh(i32* %81)
  %83 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %84 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %87 = call i32 @iscsi_destroy_conn(%struct.iscsi_cls_conn* %86)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsi_suspend_tx(%struct.iscsi_conn*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iscsi_destroy_conn(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
