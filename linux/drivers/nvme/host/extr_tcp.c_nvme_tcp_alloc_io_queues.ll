; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"creating %d I/O queues.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*)* @nvme_tcp_alloc_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_alloc_io_queues(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %7 = call i32 @nvme_tcp_nr_io_queues(%struct.nvme_ctrl* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %9 = call i32 @nvme_set_queue_count(%struct.nvme_ctrl* %8, i32* %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = add i32 %15, 1
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %35

24:                                               ; preds = %14
  %25 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dev_info(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @nvme_tcp_set_io_queues(%struct.nvme_ctrl* %30, i32 %31)
  %33 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %34 = call i32 @__nvme_tcp_alloc_io_queues(%struct.nvme_ctrl* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %24, %23, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @nvme_tcp_nr_io_queues(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_set_queue_count(%struct.nvme_ctrl*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @nvme_tcp_set_io_queues(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @__nvme_tcp_alloc_io_queues(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
