; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_controller_dma_unmap_mem_op_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_controller_dma_unmap_mem_op_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.device* }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device* }
%struct.spi_mem_op = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.sg_table = type { i32 }

@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_controller_dma_unmap_mem_op_data(%struct.spi_controller* %0, %struct.spi_mem_op* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  store %struct.sg_table* %2, %struct.sg_table** %6, align 8
  %8 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %9 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %77

14:                                               ; preds = %3
  %15 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %16 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %23 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %28 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.device*, %struct.device** %32, align 8
  store %struct.device* %33, %struct.device** %7, align 8
  br label %60

34:                                               ; preds = %21, %14
  %35 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %43 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %48 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.device*, %struct.device** %52, align 8
  store %struct.device* %53, %struct.device** %7, align 8
  br label %59

54:                                               ; preds = %41, %34
  %55 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %56 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.device*, %struct.device** %57, align 8
  store %struct.device* %58, %struct.device** %7, align 8
  br label %59

59:                                               ; preds = %54, %46
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %64 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %65 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %74

72:                                               ; preds = %60
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = call i32 @spi_unmap_buf(%struct.spi_controller* %61, %struct.device* %62, %struct.sg_table* %63, i32 %75)
  br label %77

77:                                               ; preds = %74, %13
  ret void
}

declare dso_local i32 @spi_unmap_buf(%struct.spi_controller*, %struct.device*, %struct.sg_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
