; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_gen_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_gen_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_engine_program = type { i32 }
%struct.spi_transfer = type { i32, i64, i64 }

@SPI_ENGINE_TRANSFER_WRITE = common dso_local global i32 0, align 4
@SPI_ENGINE_TRANSFER_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_engine_program*, i32, %struct.spi_transfer*)* @spi_engine_gen_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_engine_gen_xfer(%struct.spi_engine_program* %0, i32 %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_engine_program*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_engine_program* %0, %struct.spi_engine_program** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @min(i32 %17, i32 256)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @SPI_ENGINE_TRANSFER_WRITE, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @SPI_ENGINE_TRANSFER_READ, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.spi_engine_program*, %struct.spi_engine_program** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 %40, 1
  %42 = call i32 @SPI_ENGINE_CMD_TRANSFER(i32 %39, i32 %41)
  %43 = call i32 @spi_engine_program_add_cmd(%struct.spi_engine_program* %37, i32 %38, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %13

47:                                               ; preds = %13
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spi_engine_program_add_cmd(%struct.spi_engine_program*, i32, i32) #1

declare dso_local i32 @SPI_ENGINE_CMD_TRANSFER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
