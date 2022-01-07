; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_need_data_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_need_data_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_rsp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@NVMET_RDMA_REQ_INLINE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_rdma_rsp*)* @nvmet_rdma_need_data_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_need_data_out(%struct.nvmet_rdma_rsp* %0) #0 {
  %2 = alloca %struct.nvmet_rdma_rsp*, align 8
  store %struct.nvmet_rdma_rsp* %0, %struct.nvmet_rdma_rsp** %2, align 8
  %3 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %4 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @nvme_is_write(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %11 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %17 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %25 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NVMET_RDMA_REQ_INLINE_DATA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %23, %15, %9, %1
  %32 = phi i1 [ false, %15 ], [ false, %9 ], [ false, %1 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32 @nvme_is_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
