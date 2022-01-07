; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_keep_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_keep_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i32 }
%struct.request = type { i32, i32, %struct.nvme_ctrl* }

@BLK_MQ_REQ_RESERVED = common dso_local global i32 0, align 4
@NVME_QID_ANY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@nvme_keep_alive_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*)* @nvme_keep_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_keep_alive(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  %5 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %8, i32 0, i32 1
  %10 = load i32, i32* @BLK_MQ_REQ_RESERVED, align 4
  %11 = load i32, i32* @NVME_QID_ANY, align 4
  %12 = call %struct.request* @nvme_alloc_request(i32 %7, i32* %9, i32 %10, i32 %11)
  store %struct.request* %12, %struct.request** %4, align 8
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = call i64 @IS_ERR(%struct.request* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = call i32 @PTR_ERR(%struct.request* %17)
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 2
  store %struct.nvme_ctrl* %27, %struct.nvme_ctrl** %29, align 8
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.request*, %struct.request** %4, align 8
  %34 = load i32, i32* @nvme_keep_alive_end_io, align 4
  %35 = call i32 @blk_execute_rq_nowait(i32 %32, i32* null, %struct.request* %33, i32 0, i32 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %19, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.request* @nvme_alloc_request(i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @PTR_ERR(%struct.request*) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
