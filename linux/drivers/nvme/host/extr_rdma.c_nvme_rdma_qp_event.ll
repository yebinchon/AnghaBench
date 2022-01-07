; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"QP event %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event*, i8*)* @nvme_rdma_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_rdma_qp_event(%struct.ib_event* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_event*, align 8
  %4 = alloca i8*, align 8
  store %struct.ib_event* %0, %struct.ib_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %6 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ib_event_msg(i32 %7)
  %9 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %10 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @ib_event_msg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
