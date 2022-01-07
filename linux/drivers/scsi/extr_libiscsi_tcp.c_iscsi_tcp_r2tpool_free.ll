; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_r2tpool_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_r2tpool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, %struct.iscsi_task** }
%struct.iscsi_task = type { %struct.iscsi_tcp_task* }
%struct.iscsi_tcp_task = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_tcp_r2tpool_free(%struct.iscsi_session* %0) #0 {
  %2 = alloca %struct.iscsi_session*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.iscsi_tcp_task*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %6
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %13, i32 0, i32 1
  %15 = load %struct.iscsi_task**, %struct.iscsi_task*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.iscsi_task*, %struct.iscsi_task** %15, i64 %17
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %18, align 8
  store %struct.iscsi_task* %19, %struct.iscsi_task** %4, align 8
  %20 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %20, i32 0, i32 0
  %22 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %21, align 8
  store %struct.iscsi_tcp_task* %22, %struct.iscsi_tcp_task** %5, align 8
  %23 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %23, i32 0, i32 1
  %25 = call i32 @kfifo_free(i32* %24)
  %26 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %26, i32 0, i32 0
  %28 = call i32 @iscsi_pool_free(i32* %27)
  br label %29

29:                                               ; preds = %12
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %6

32:                                               ; preds = %6
  ret void
}

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @iscsi_pool_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
