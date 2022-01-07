; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_dma_port.c_dma_port_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_dma_port = type { i32, i32, %struct.tb_switch*, i32 }
%struct.tb_switch = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAIL_DATA_DWORDS = common dso_local global i32 0, align 4
@DMA_PORT_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_dma_port* @dma_port_alloc(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_dma_port*, align 8
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca %struct.tb_dma_port*, align 8
  %5 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %6 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %7 = call i32 @dma_find_port(%struct.tb_switch* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.tb_dma_port* null, %struct.tb_dma_port** %2, align 8
  br label %41

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tb_dma_port* @kzalloc(i32 24, i32 %12)
  store %struct.tb_dma_port* %13, %struct.tb_dma_port** %4, align 8
  %14 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %15 = icmp ne %struct.tb_dma_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.tb_dma_port* null, %struct.tb_dma_port** %2, align 8
  br label %41

17:                                               ; preds = %11
  %18 = load i32, i32* @MAIL_DATA_DWORDS, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kmalloc_array(i32 %18, i32 4, i32 %19)
  %21 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %22 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %24 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %29 = call i32 @kfree(%struct.tb_dma_port* %28)
  store %struct.tb_dma_port* null, %struct.tb_dma_port** %2, align 8
  br label %41

30:                                               ; preds = %17
  %31 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %32 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %33 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %32, i32 0, i32 2
  store %struct.tb_switch* %31, %struct.tb_switch** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %36 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @DMA_PORT_CAP, align 4
  %38 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  %39 = getelementptr inbounds %struct.tb_dma_port, %struct.tb_dma_port* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tb_dma_port*, %struct.tb_dma_port** %4, align 8
  store %struct.tb_dma_port* %40, %struct.tb_dma_port** %2, align 8
  br label %41

41:                                               ; preds = %30, %27, %16, %10
  %42 = load %struct.tb_dma_port*, %struct.tb_dma_port** %2, align 8
  ret %struct.tb_dma_port* %42
}

declare dso_local i32 @dma_find_port(%struct.tb_switch*) #1

declare dso_local %struct.tb_dma_port* @kzalloc(i32, i32) #1

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.tb_dma_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
