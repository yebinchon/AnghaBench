; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_exec_mem_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_exec_mem_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ti_qspi = type { i64, i64, i32, i64, i32 }
%struct.sg_table = type { i32 }

@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @ti_qspi_exec_mem_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_qspi_exec_mem_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.ti_qspi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sg_table, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %10 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %11 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ti_qspi* @spi_master_get_devdata(i32 %14)
  store %struct.ti_qspi* %15, %struct.ti_qspi** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %17 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %23 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %21
  %29 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %30 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28, %21, %2
  %41 = load i32, i32* @ENOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %164

43:                                               ; preds = %34
  %44 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %45 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %50 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %55 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load i32, i32* @ENOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %164

61:                                               ; preds = %43
  %62 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %63 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %62, i32 0, i32 2
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %66 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %71 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = call i32 @ti_qspi_enable_memory_map(%struct.TYPE_13__* %72)
  br label %74

74:                                               ; preds = %69, %61
  %75 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %76 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %79 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %83 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %87 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %91 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ti_qspi_setup_mmap_read(%struct.TYPE_13__* %77, i32 %81, i32 %85, i32 %89, i32 %93)
  %95 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %96 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %143

99:                                               ; preds = %74
  %100 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %101 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @virt_addr_valid(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %99
  %108 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %109 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %114 = call i32 @spi_controller_dma_map_mem_op_data(i32 %112, %struct.spi_mem_op* %113, %struct.sg_table* %9)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %107
  %117 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %9, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ti_qspi_dma_xfer_sg(%struct.ti_qspi* %117, i32 %120, i64 %118)
  store i32 %121, i32* %8, align 4
  %122 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %123 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %128 = call i32 @spi_controller_dma_unmap_mem_op_data(i32 %126, %struct.spi_mem_op* %127, %struct.sg_table* %9)
  br label %142

129:                                              ; preds = %107, %99
  %130 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %133 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %138 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @ti_qspi_dma_bounce_buffer(%struct.ti_qspi* %130, i64 %131, i32 %136, i64 %140)
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %129, %116
  br label %159

143:                                              ; preds = %74
  %144 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %145 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %150 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %151, %152
  %154 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %155 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @memcpy_fromio(i32 %148, i64 %153, i64 %157)
  br label %159

159:                                              ; preds = %143, %142
  %160 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %161 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %160, i32 0, i32 2
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %58, %40
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.ti_qspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ti_qspi_enable_memory_map(%struct.TYPE_13__*) #1

declare dso_local i32 @ti_qspi_setup_mmap_read(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i64 @virt_addr_valid(i32) #1

declare dso_local i32 @spi_controller_dma_map_mem_op_data(i32, %struct.spi_mem_op*, %struct.sg_table*) #1

declare dso_local i32 @ti_qspi_dma_xfer_sg(%struct.ti_qspi*, i32, i64) #1

declare dso_local i32 @spi_controller_dma_unmap_mem_op_data(i32, %struct.spi_mem_op*, %struct.sg_table*) #1

declare dso_local i32 @ti_qspi_dma_bounce_buffer(%struct.ti_qspi*, i64, i32, i64) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
