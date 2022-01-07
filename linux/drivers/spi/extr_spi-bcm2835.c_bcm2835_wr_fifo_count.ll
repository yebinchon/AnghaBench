; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_wr_fifo_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_wr_fifo_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_spi = type { i32, i32 }

@BCM2835_SPI_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_spi*, i32)* @bcm2835_wr_fifo_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_wr_fifo_count(%struct.bcm2835_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm2835_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bcm2835_spi* %0, %struct.bcm2835_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %3, align 8
  %9 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, %7
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %3, align 8
  %17 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @min(i32 %21, i32 4)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %3, align 8
  %24 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @memcpy(i64* %5, i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %3, align 8
  %30 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %34

33:                                               ; preds = %15
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %3, align 8
  %36 = load i32, i32* @BCM2835_SPI_FIFO, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %35, i32 %36, i64 %37)
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 4
  store i32 %40, i32* %4, align 4
  br label %12

41:                                               ; preds = %12
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @bcm2835_wr(%struct.bcm2835_spi*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
