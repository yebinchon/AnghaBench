; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_process_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_process_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*, i64*, i64*, i32)* @nvme_process_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_process_cq(%struct.nvme_queue* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_queue*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %11 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** %6, align 8
  store i64 %12, i64* %13, align 8
  br label %14

14:                                               ; preds = %36, %4
  %15 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %16 = call i64 @nvme_cqe_pending(%struct.nvme_queue* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %23 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21, %18
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %38 = call i32 @nvme_update_cq_head(%struct.nvme_queue* %37)
  br label %14

39:                                               ; preds = %14
  %40 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %41 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %51 = call i32 @nvme_ring_cq_doorbell(%struct.nvme_queue* %50)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i64 @nvme_cqe_pending(%struct.nvme_queue*) #1

declare dso_local i32 @nvme_update_cq_head(%struct.nvme_queue*) #1

declare dso_local i32 @nvme_ring_cq_doorbell(%struct.nvme_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
