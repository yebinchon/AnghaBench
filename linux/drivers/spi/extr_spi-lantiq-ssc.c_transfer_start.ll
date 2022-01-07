; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_transfer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_transfer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lantiq_ssc_spi = type { i32, i32, i32, i64, i64 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lantiq_ssc_spi*, %struct.spi_device*, %struct.spi_transfer*)* @transfer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer_start(%struct.lantiq_ssc_spi* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.lantiq_ssc_spi*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i64, align 8
  store %struct.lantiq_ssc_spi* %0, %struct.lantiq_ssc_spi** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %8 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %9 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %8, i32 0, i32 2
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %16 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %21 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %31 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %33 = call i32 @tx_fifo_write(%struct.lantiq_ssc_spi* %32)
  br label %34

34:                                               ; preds = %26, %3
  %35 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %36 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %44 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %46 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %51 = call i32 @rx_request(%struct.lantiq_ssc_spi* %50)
  br label %52

52:                                               ; preds = %49, %39
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %55 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %54, i32 0, i32 2
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tx_fifo_write(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @rx_request(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
