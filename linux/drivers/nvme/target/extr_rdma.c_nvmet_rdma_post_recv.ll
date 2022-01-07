; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_device = type { i64, i32 }
%struct.nvmet_rdma_cmd = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"post_recv cmd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_rdma_device*, %struct.nvmet_rdma_cmd*)* @nvmet_rdma_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_post_recv(%struct.nvmet_rdma_device* %0, %struct.nvmet_rdma_cmd* %1) #0 {
  %3 = alloca %struct.nvmet_rdma_device*, align 8
  %4 = alloca %struct.nvmet_rdma_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.nvmet_rdma_device* %0, %struct.nvmet_rdma_device** %3, align 8
  store %struct.nvmet_rdma_cmd* %1, %struct.nvmet_rdma_cmd** %4, align 8
  %6 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %7 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %22 = call i32 @ib_dma_sync_single_for_device(i32 %8, i32 %14, i32 %20, i32 %21)
  %23 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %24 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %29 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %31, i32 0, i32 0
  %33 = call i32 @ib_post_srq_recv(i64 %30, i32* %32, i32* null)
  store i32 %33, i32* %5, align 4
  br label %45

34:                                               ; preds = %2
  %35 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %42, i32 0, i32 0
  %44 = call i32 @ib_post_recv(i32 %41, i32* %43, i32* null)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %34, %27
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ib_post_srq_recv(i64, i32*, i32*) #1

declare dso_local i32 @ib_post_recv(i32, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
