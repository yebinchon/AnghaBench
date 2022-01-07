; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64 }
%struct.tiny_spi = type { i32, i64, i32, i64 }

@TINY_SPI_BAUD = common dso_local global i64 0, align 8
@TINY_SPI_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @tiny_spi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiny_spi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.tiny_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = call %struct.tiny_spi* @tiny_spi_to_hw(%struct.spi_device* %7)
  store %struct.tiny_spi* %8, %struct.tiny_spi** %5, align 8
  %9 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %10 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %13 = icmp ne %struct.spi_transfer* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %24 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @tiny_spi_baud(%struct.spi_device* %28, i64 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %19, %14
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %37 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TINY_SPI_BAUD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %43 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %46 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TINY_SPI_CONTROL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  ret i32 0
}

declare dso_local %struct.tiny_spi* @tiny_spi_to_hw(%struct.spi_device*) #1

declare dso_local i32 @tiny_spi_baud(%struct.spi_device*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
