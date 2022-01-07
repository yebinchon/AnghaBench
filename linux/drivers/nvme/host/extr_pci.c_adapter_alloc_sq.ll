; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_adapter_alloc_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_adapter_alloc_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.nvme_ctrl }
%struct.nvme_ctrl = type { i32, i32 }
%struct.nvme_queue = type { i32, i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32 }

@NVME_QUEUE_PHYS_CONTIG = common dso_local global i32 0, align 4
@NVME_QUIRK_MEDIUM_PRIO_SQ = common dso_local global i32 0, align 4
@NVME_SQ_PRIO_MEDIUM = common dso_local global i32 0, align 4
@nvme_admin_create_sq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, i32, %struct.nvme_queue*)* @adapter_alloc_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapter_alloc_sq(%struct.nvme_dev* %0, i32 %1, %struct.nvme_queue* %2) #0 {
  %4 = alloca %struct.nvme_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_queue*, align 8
  %7 = alloca %struct.nvme_ctrl*, align 8
  %8 = alloca %struct.nvme_command, align 8
  %9 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvme_queue* %2, %struct.nvme_queue** %6, align 8
  %10 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %10, i32 0, i32 0
  store %struct.nvme_ctrl* %11, %struct.nvme_ctrl** %7, align 8
  %12 = load i32, i32* @NVME_QUEUE_PHYS_CONTIG, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %14 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NVME_QUIRK_MEDIUM_PRIO_SQ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @NVME_SQ_PRIO_MEDIUM, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19, %3
  %24 = call i32 @memset(%struct.nvme_command* %8, i32 0, i32 40)
  %25 = load i32, i32* @nvme_admin_create_sq, align 4
  %26 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %29 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_le64(i32 %30)
  %32 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %39 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %54 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nvme_submit_sync_cmd(i32 %56, %struct.nvme_command* %8, i32* null, i32 0)
  ret i32 %57
}

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
