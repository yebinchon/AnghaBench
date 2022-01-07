; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_setup_host_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_setup_host_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.pqi_ofa_memory*, i32, %struct.TYPE_2__* }
%struct.pqi_ofa_memory = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@PQI_OFA_MEMORY_DESCRIPTOR_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PQI_OFA_VERSION = common dso_local global i32 0, align 4
@PQI_OFA_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate host buffer of size = %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, i32)* @pqi_ofa_setup_host_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_ofa_setup_host_buffer(%struct.pqi_ctrl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pqi_ofa_memory*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %8 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @PQI_OFA_MEMORY_DESCRIPTOR_LENGTH, align 4
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %14 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pqi_ofa_memory* @dma_alloc_coherent(%struct.device* %11, i32 %12, i32* %14, i32 %15)
  store %struct.pqi_ofa_memory* %16, %struct.pqi_ofa_memory** %5, align 8
  %17 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %18 = icmp ne %struct.pqi_ofa_memory* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %43

20:                                               ; preds = %2
  %21 = load i32, i32* @PQI_OFA_VERSION, align 4
  %22 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %23 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %22, i32 0, i32 2
  %24 = call i32 @put_unaligned_le16(i32 %21, i32* %23)
  %25 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %26 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %25, i32 0, i32 1
  %27 = load i32, i32* @PQI_OFA_SIGNATURE, align 4
  %28 = call i32 @memcpy(i32* %26, i32 %27, i32 4)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %32 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %34 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %35 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %34, i32 0, i32 0
  store %struct.pqi_ofa_memory* %33, %struct.pqi_ofa_memory** %35, align 8
  %36 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %37 = call i64 @pqi_ofa_alloc_host_buffer(%struct.pqi_ctrl_info* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %20
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %19, %39, %20
  ret void
}

declare dso_local %struct.pqi_ofa_memory* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @pqi_ofa_alloc_host_buffer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
