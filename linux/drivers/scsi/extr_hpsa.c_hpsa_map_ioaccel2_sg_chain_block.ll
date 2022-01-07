; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_map_ioaccel2_sg_chain_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_map_ioaccel2_sg_chain_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_3__*, %struct.ioaccel2_sg_element** }
%struct.TYPE_3__ = type { i32 }
%struct.ioaccel2_sg_element = type { i32 }
%struct.io_accel2_cmd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.CommandList = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.io_accel2_cmd*, %struct.CommandList*)* @hpsa_map_ioaccel2_sg_chain_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_map_ioaccel2_sg_chain_block(%struct.ctlr_info* %0, %struct.io_accel2_cmd* %1, %struct.CommandList* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca %struct.io_accel2_cmd*, align 8
  %7 = alloca %struct.CommandList*, align 8
  %8 = alloca %struct.ioaccel2_sg_element*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store %struct.io_accel2_cmd* %1, %struct.io_accel2_cmd** %6, align 8
  store %struct.CommandList* %2, %struct.CommandList** %7, align 8
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %12 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %11, i32 0, i32 1
  %13 = load %struct.ioaccel2_sg_element**, %struct.ioaccel2_sg_element*** %12, align 8
  %14 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %15 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ioaccel2_sg_element*, %struct.ioaccel2_sg_element** %13, i64 %16
  %18 = load %struct.ioaccel2_sg_element*, %struct.ioaccel2_sg_element** %17, align 8
  store %struct.ioaccel2_sg_element* %18, %struct.ioaccel2_sg_element** %8, align 8
  %19 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %27 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.ioaccel2_sg_element*, %struct.ioaccel2_sg_element** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @dma_map_single(i32* %29, %struct.ioaccel2_sg_element* %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %35 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @dma_mapping_error(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %3
  %42 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  store i32 -1, i32* %4, align 4
  br label %53

46:                                               ; preds = %3
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @cpu_to_le64(i32 %47)
  %49 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_map_single(i32*, %struct.ioaccel2_sg_element*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
