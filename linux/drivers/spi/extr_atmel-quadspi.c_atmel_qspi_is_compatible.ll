; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_is_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_is_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_op = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.atmel_qspi_mode = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem_op*, %struct.atmel_qspi_mode*)* @atmel_qspi_is_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_qspi_is_compatible(%struct.spi_mem_op* %0, %struct.atmel_qspi_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem_op*, align 8
  %5 = alloca %struct.atmel_qspi_mode*, align 8
  store %struct.spi_mem_op* %0, %struct.spi_mem_op** %4, align 8
  store %struct.atmel_qspi_mode* %1, %struct.atmel_qspi_mode** %5, align 8
  %6 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %7 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.atmel_qspi_mode*, %struct.atmel_qspi_mode** %5, align 8
  %11 = getelementptr inbounds %struct.atmel_qspi_mode, %struct.atmel_qspi_mode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %17 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %23 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.atmel_qspi_mode*, %struct.atmel_qspi_mode** %5, align 8
  %27 = getelementptr inbounds %struct.atmel_qspi_mode, %struct.atmel_qspi_mode* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %48

31:                                               ; preds = %21, %15
  %32 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %33 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %39 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.atmel_qspi_mode*, %struct.atmel_qspi_mode** %5, align 8
  %43 = getelementptr inbounds %struct.atmel_qspi_mode, %struct.atmel_qspi_mode* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %37, %31
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %30, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
