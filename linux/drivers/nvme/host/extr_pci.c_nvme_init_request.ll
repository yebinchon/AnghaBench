; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.nvme_dev* }
%struct.nvme_dev = type { i32, %struct.nvme_queue*, %struct.blk_mq_tag_set }
%struct.nvme_queue = type { i32 }
%struct.request = type { i32 }
%struct.nvme_iod = type { %struct.nvme_queue* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @nvme_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_tag_set*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_dev*, align 8
  %10 = alloca %struct.nvme_iod*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvme_queue*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %5, align 8
  %14 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %13, i32 0, i32 0
  %15 = load %struct.nvme_dev*, %struct.nvme_dev** %14, align 8
  store %struct.nvme_dev* %15, %struct.nvme_dev** %9, align 8
  %16 = load %struct.request*, %struct.request** %6, align 8
  %17 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %16)
  store %struct.nvme_iod* %17, %struct.nvme_iod** %10, align 8
  %18 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %5, align 8
  %19 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %20 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %19, i32 0, i32 2
  %21 = icmp eq %struct.blk_mq_tag_set* %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 1
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  store i32 %27, i32* %11, align 4
  %28 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %29 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %28, i32 0, i32 1
  %30 = load %struct.nvme_queue*, %struct.nvme_queue** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %30, i64 %32
  store %struct.nvme_queue* %33, %struct.nvme_queue** %12, align 8
  %34 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %35 = icmp ne %struct.nvme_queue* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  %40 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %41 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %40, i32 0, i32 0
  store %struct.nvme_queue* %39, %struct.nvme_queue** %41, align 8
  %42 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %43 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %42, i32 0, i32 0
  %44 = load %struct.request*, %struct.request** %6, align 8
  %45 = call %struct.TYPE_2__* @nvme_req(%struct.request* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  ret i32 0
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @nvme_req(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
