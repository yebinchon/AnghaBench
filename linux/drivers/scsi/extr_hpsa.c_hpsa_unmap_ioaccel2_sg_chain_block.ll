; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_unmap_ioaccel2_sg_chain_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_unmap_ioaccel2_sg_chain_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.io_accel2_cmd = type { %struct.ioaccel2_sg_element* }
%struct.ioaccel2_sg_element = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.io_accel2_cmd*)* @hpsa_unmap_ioaccel2_sg_chain_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_unmap_ioaccel2_sg_chain_block(%struct.ctlr_info* %0, %struct.io_accel2_cmd* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.io_accel2_cmd*, align 8
  %5 = alloca %struct.ioaccel2_sg_element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.io_accel2_cmd* %1, %struct.io_accel2_cmd** %4, align 8
  %8 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %8, i32 0, i32 0
  %10 = load %struct.ioaccel2_sg_element*, %struct.ioaccel2_sg_element** %9, align 8
  store %struct.ioaccel2_sg_element* %10, %struct.ioaccel2_sg_element** %5, align 8
  %11 = load %struct.ioaccel2_sg_element*, %struct.ioaccel2_sg_element** %5, align 8
  %12 = getelementptr inbounds %struct.ioaccel2_sg_element, %struct.ioaccel2_sg_element* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le64_to_cpu(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %15, i32 0, i32 0
  %17 = load %struct.ioaccel2_sg_element*, %struct.ioaccel2_sg_element** %16, align 8
  %18 = getelementptr inbounds %struct.ioaccel2_sg_element, %struct.ioaccel2_sg_element* %17, i64 0
  %19 = getelementptr inbounds %struct.ioaccel2_sg_element, %struct.ioaccel2_sg_element* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %23 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(i32* %25, i32 %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
