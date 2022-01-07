; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.nvme_tcp_queue* }
%struct.nvme_tcp_queue = type { i32 (%struct.sock*)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"queue %d socket state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @nvme_tcp_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_state_change(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.nvme_tcp_queue*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 1
  %6 = call i32 @read_lock(i32* %5)
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 2
  %9 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %8, align 8
  store %struct.nvme_tcp_queue* %9, %struct.nvme_tcp_queue** %3, align 8
  %10 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %11 = icmp ne %struct.nvme_tcp_queue* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %23 [
    i32 132, label %17
    i32 131, label %17
    i32 128, label %17
    i32 130, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %13, %13, %13, %13, %13
  %18 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @nvme_tcp_error_recovery(%struct.TYPE_4__* %21)
  br label %36

23:                                               ; preds = %13
  %24 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %31 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %30)
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %23, %17
  %37 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %38 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %37, i32 0, i32 0
  %39 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %38, align 8
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  %41 = call i32 %39(%struct.sock* %40)
  br label %42

42:                                               ; preds = %36, %12
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = call i32 @read_unlock(i32* %44)
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @nvme_tcp_error_recovery(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
