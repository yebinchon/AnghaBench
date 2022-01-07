; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_tagset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_tagset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tags = type { i32 }
%struct.nvme_tcp_queue = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.blk_mq_tags** }
%struct.TYPE_4__ = type { %struct.blk_mq_tags** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_mq_tags* (%struct.nvme_tcp_queue*)* @nvme_tcp_tagset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_mq_tags* @nvme_tcp_tagset(%struct.nvme_tcp_queue* %0) #0 {
  %2 = alloca %struct.blk_mq_tags*, align 8
  %3 = alloca %struct.nvme_tcp_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %3, align 8
  %5 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %6 = call i64 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.blk_mq_tags*, %struct.blk_mq_tags** %15, i64 %16
  %18 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %17, align 8
  store %struct.blk_mq_tags* %18, %struct.blk_mq_tags** %2, align 8
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds %struct.blk_mq_tags*, %struct.blk_mq_tags** %25, i64 %27
  %29 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %28, align 8
  store %struct.blk_mq_tags* %29, %struct.blk_mq_tags** %2, align 8
  br label %30

30:                                               ; preds = %19, %9
  %31 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %2, align 8
  ret %struct.blk_mq_tags* %31
}

declare dso_local i64 @nvme_tcp_queue_id(%struct.nvme_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
