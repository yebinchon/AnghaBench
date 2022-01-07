; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_fatal_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_fatal_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@NVMET_TCP_RECV_ERR = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_tcp_queue*)* @nvmet_tcp_fatal_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca %struct.nvmet_tcp_queue*, align 8
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %2, align 8
  %3 = load i32, i32* @NVMET_TCP_RECV_ERR, align 4
  %4 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %5 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 8
  %6 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %13 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @nvmet_ctrl_fatal_error(i64 %15)
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %19 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SHUT_RDWR, align 4
  %22 = call i32 @kernel_sock_shutdown(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @nvmet_ctrl_fatal_error(i64) #1

declare dso_local i32 @kernel_sock_shutdown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
