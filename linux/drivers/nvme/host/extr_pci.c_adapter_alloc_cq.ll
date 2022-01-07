; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_adapter_alloc_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_adapter_alloc_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvme_queue = type { i32, i32, i32 }
%struct.nvme_command = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32, i32 }

@NVME_QUEUE_PHYS_CONTIG = common dso_local global i32 0, align 4
@NVMEQ_POLLED = common dso_local global i32 0, align 4
@NVME_CQ_IRQ_ENABLED = common dso_local global i32 0, align 4
@nvme_admin_create_cq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, i32, %struct.nvme_queue*, i32)* @adapter_alloc_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapter_alloc_cq(%struct.nvme_dev* %0, i32 %1, %struct.nvme_queue* %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_command, align 8
  %10 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvme_queue* %2, %struct.nvme_queue** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @NVME_QUEUE_PHYS_CONTIG, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @NVMEQ_POLLED, align 4
  %13 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %14 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %13, i32 0, i32 2
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @NVME_CQ_IRQ_ENABLED, align 4
  %19 = load i32, i32* %10, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %17, %4
  %22 = call i32 @memset(%struct.nvme_command* %9, i32 0, i32 40)
  %23 = load i32, i32* @nvme_admin_create_cq, align 4
  %24 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %27 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_le64(i32 %28)
  %30 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %37 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %52 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nvme_submit_sync_cmd(i32 %54, %struct.nvme_command* %9, i32* null, i32 0)
  ret i32 %55
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
