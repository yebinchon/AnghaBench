; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_free_host_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_free_host_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.pqi_ofa_memory*, i32, %struct.TYPE_2__*, %struct.pqi_ofa_memory** }
%struct.pqi_ofa_memory = type { i32, %struct.pqi_sg_descriptor*, i32 }
%struct.pqi_sg_descriptor = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PQI_OFA_MEMORY_DESCRIPTOR_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_ofa_free_host_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_ofa_free_host_buffer(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_sg_descriptor*, align 8
  %5 = alloca %struct.pqi_ofa_memory*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %6 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %7 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %6, i32 0, i32 0
  %8 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %7, align 8
  store %struct.pqi_ofa_memory* %8, %struct.pqi_ofa_memory** %5, align 8
  %9 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %10 = icmp ne %struct.pqi_ofa_memory* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %14 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %61

18:                                               ; preds = %12
  %19 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %20 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %19, i32 0, i32 1
  %21 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %20, align 8
  store %struct.pqi_sg_descriptor* %21, %struct.pqi_sg_descriptor** %4, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %53, %18
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %25 = getelementptr inbounds %struct.pqi_ofa_memory, %struct.pqi_ofa_memory* %24, i32 0, i32 0
  %26 = call i32 @get_unaligned_le16(i32* %25)
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %30 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %33, i64 %35
  %37 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %36, i32 0, i32 1
  %38 = call i32 @get_unaligned_le32(i32* %37)
  %39 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %40 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %39, i32 0, i32 3
  %41 = load %struct.pqi_ofa_memory**, %struct.pqi_ofa_memory*** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %41, i64 %43
  %45 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %44, align 8
  %46 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %46, i64 %48
  %50 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %49, i32 0, i32 0
  %51 = call i32 @get_unaligned_le64(i32* %50)
  %52 = call i32 @dma_free_coherent(i32* %32, i32 %38, %struct.pqi_ofa_memory* %45, i32 %51)
  br label %53

53:                                               ; preds = %28
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %58 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %57, i32 0, i32 3
  %59 = load %struct.pqi_ofa_memory**, %struct.pqi_ofa_memory*** %58, align 8
  %60 = call i32 @kfree(%struct.pqi_ofa_memory** %59)
  br label %61

61:                                               ; preds = %56, %17
  %62 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %63 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* @PQI_OFA_MEMORY_DESCRIPTOR_LENGTH, align 4
  %67 = load %struct.pqi_ofa_memory*, %struct.pqi_ofa_memory** %5, align 8
  %68 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %69 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dma_free_coherent(i32* %65, i32 %66, %struct.pqi_ofa_memory* %67, i32 %70)
  %72 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %73 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %72, i32 0, i32 0
  store %struct.pqi_ofa_memory* null, %struct.pqi_ofa_memory** %73, align 8
  br label %74

74:                                               ; preds = %61, %11
  ret void
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.pqi_ofa_memory*, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @get_unaligned_le64(i32*) #1

declare dso_local i32 @kfree(%struct.pqi_ofa_memory**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
