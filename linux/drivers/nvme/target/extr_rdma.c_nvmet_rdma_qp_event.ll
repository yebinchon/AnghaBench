; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event = type { i32 }
%struct.nvmet_rdma_queue = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"received IB QP event: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event*, i8*)* @nvmet_rdma_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_rdma_qp_event(%struct.ib_event* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvmet_rdma_queue*, align 8
  store %struct.ib_event* %0, %struct.ib_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nvmet_rdma_queue*
  store %struct.nvmet_rdma_queue* %7, %struct.nvmet_rdma_queue** %5, align 8
  %8 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %9 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %19 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %13 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %16 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rdma_notify(i32 %14, i32 %17)
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %21 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ib_event_msg(i32 %22)
  %24 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %25 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %19, %11
  ret void
}

declare dso_local i32 @rdma_notify(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @ib_event_msg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
