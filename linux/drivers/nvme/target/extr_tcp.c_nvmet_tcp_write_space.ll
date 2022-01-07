; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_2__*, %struct.nvmet_tcp_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.nvmet_tcp_queue = type { i64, i32, i32, i32 (%struct.sock*)* }

@NVMET_TCP_Q_CONNECTING = common dso_local global i64 0, align 8
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@nvmet_tcp_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @nvmet_tcp_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_tcp_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = call i32 @read_lock_bh(i32* %5)
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 2
  %9 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %8, align 8
  store %struct.nvmet_tcp_queue* %9, %struct.nvmet_tcp_queue** %3, align 8
  %10 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %11 = icmp ne %struct.nvmet_tcp_queue* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %19 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NVMET_TCP_Q_CONNECTING, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %28 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %27, i32 0, i32 3
  %29 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %28, align 8
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = call i32 %29(%struct.sock* %30)
  br label %51

32:                                               ; preds = %17
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = call i64 @sk_stream_is_writeable(%struct.sock* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32, i32* @SOCK_NOSPACE, align 4
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @clear_bit(i32 %37, i32* %41)
  %43 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %44 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @nvmet_tcp_wq, align 4
  %47 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %48 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %47, i32 0, i32 1
  %49 = call i32 @queue_work_on(i32 %45, i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %36, %32
  br label %51

51:                                               ; preds = %50, %26, %16
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = call i32 @read_unlock_bh(i32* %53)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sk_stream_is_writeable(%struct.sock*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
