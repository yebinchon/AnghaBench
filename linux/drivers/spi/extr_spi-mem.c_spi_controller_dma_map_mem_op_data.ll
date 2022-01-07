; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_controller_dma_map_mem_op_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_controller_dma_map_mem_op_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.device* }
%struct.spi_mem_op = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.sg_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_controller_dma_map_mem_op_data(%struct.spi_controller* %0, %struct.spi_mem_op* %1, %struct.sg_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_mem_op*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %9 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %10 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %95

17:                                               ; preds = %3
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %26 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %31 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %8, align 8
  br label %63

37:                                               ; preds = %24, %17
  %38 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %39 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %46 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %51 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.device*, %struct.device** %55, align 8
  store %struct.device* %56, %struct.device** %8, align 8
  br label %62

57:                                               ; preds = %44, %37
  %58 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %59 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.device*, %struct.device** %60, align 8
  store %struct.device* %61, %struct.device** %8, align 8
  br label %62

62:                                               ; preds = %57, %49
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = icmp ne %struct.device* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %95

69:                                               ; preds = %63
  %70 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %71 = load %struct.device*, %struct.device** %8, align 8
  %72 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %73 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %74 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %79 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %83 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %69
  %89 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %92

90:                                               ; preds = %69
  %91 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @spi_map_buf(%struct.spi_controller* %70, %struct.device* %71, %struct.sg_table* %72, i32 %77, i32 %81, i32 %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %66, %14
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @spi_map_buf(%struct.spi_controller*, %struct.device*, %struct.sg_table*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
