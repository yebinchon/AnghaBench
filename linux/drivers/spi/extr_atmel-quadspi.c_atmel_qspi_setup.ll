; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.spi_controller* }
%struct.spi_controller = type { i64 }
%struct.atmel_qspi = type { i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QSPI_SCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @atmel_qspi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_qspi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.atmel_qspi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load %struct.spi_controller*, %struct.spi_controller** %9, align 8
  store %struct.spi_controller* %10, %struct.spi_controller** %4, align 8
  %11 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %12 = call %struct.atmel_qspi* @spi_controller_get_devdata(%struct.spi_controller* %11)
  store %struct.atmel_qspi* %12, %struct.atmel_qspi** %5, align 8
  %13 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %14 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %63

28:                                               ; preds = %20
  %29 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %30 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @clk_get_rate(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %63

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @DIV_ROUND_UP(i64 %39, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %46, %38
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @QSPI_SCR_SCBR(i64 %50)
  %52 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %53 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %55 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %58 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @QSPI_SCR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i32 %56, i64 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %49, %35, %25, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.atmel_qspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @QSPI_SCR_SCBR(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
