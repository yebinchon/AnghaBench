; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_pdu_data_left.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_pdu_data_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_request = type { i64, i64 }

@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvme_tcp_request*)* @nvme_tcp_pdu_data_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvme_tcp_pdu_data_left(%struct.nvme_tcp_request* %0) #0 {
  %2 = alloca %struct.nvme_tcp_request*, align 8
  store %struct.nvme_tcp_request* %0, %struct.nvme_tcp_request** %2, align 8
  %3 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %2, align 8
  %4 = call i32 @blk_mq_rq_from_pdu(%struct.nvme_tcp_request* %3)
  %5 = call i64 @rq_data_dir(i32 %4)
  %6 = load i64, i64* @WRITE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i64 [ %15, %8 ], [ 0, %16 ]
  ret i64 %18
}

declare dso_local i64 @rq_data_dir(i32) #1

declare dso_local i32 @blk_mq_rq_from_pdu(%struct.nvme_tcp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
