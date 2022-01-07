; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_free_rsps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_free_rsps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_queue = type { i32, %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_device* }
%struct.nvmet_rdma_rsp = type { i32 }
%struct.nvmet_rdma_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_rdma_queue*)* @nvmet_rdma_free_rsps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_rdma_free_rsps(%struct.nvmet_rdma_queue* %0) #0 {
  %2 = alloca %struct.nvmet_rdma_queue*, align 8
  %3 = alloca %struct.nvmet_rdma_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvmet_rdma_rsp*, align 8
  store %struct.nvmet_rdma_queue* %0, %struct.nvmet_rdma_queue** %2, align 8
  %7 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %8 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %7, i32 0, i32 2
  %9 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %8, align 8
  store %struct.nvmet_rdma_device* %9, %struct.nvmet_rdma_device** %3, align 8
  %10 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %11 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %20 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %19, i32 0, i32 1
  %21 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %21, i64 %23
  store %struct.nvmet_rdma_rsp* %24, %struct.nvmet_rdma_rsp** %6, align 8
  %25 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %6, align 8
  %26 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %29 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %6, align 8
  %30 = call i32 @nvmet_rdma_free_rsp(%struct.nvmet_rdma_device* %28, %struct.nvmet_rdma_rsp* %29)
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %36 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %35, i32 0, i32 1
  %37 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %36, align 8
  %38 = call i32 @kfree(%struct.nvmet_rdma_rsp* %37)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @nvmet_rdma_free_rsp(%struct.nvmet_rdma_device*, %struct.nvmet_rdma_rsp*) #1

declare dso_local i32 @kfree(%struct.nvmet_rdma_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
