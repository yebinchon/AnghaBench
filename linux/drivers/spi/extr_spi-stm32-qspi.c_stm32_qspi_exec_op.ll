; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_mem_op = type { i32 }
%struct.stm32_qspi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @stm32_qspi_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_qspi_exec_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca %struct.spi_mem*, align 8
  %4 = alloca %struct.spi_mem_op*, align 8
  %5 = alloca %struct.stm32_qspi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %3, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %4, align 8
  %7 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %8 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.stm32_qspi* @spi_controller_get_devdata(i32 %11)
  store %struct.stm32_qspi* %12, %struct.stm32_qspi** %5, align 8
  %13 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %17 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %18 = call i32 @stm32_qspi_send(%struct.spi_mem* %16, %struct.spi_mem_op* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local %struct.stm32_qspi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stm32_qspi_send(%struct.spi_mem*, %struct.spi_mem_op*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
