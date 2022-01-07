; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.s3c24xx_spi = type { i32, i32, i32, i64, i64, i32, i32 }

@S3C2410_SPTDAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @s3c24xx_spi_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_spi_txrx(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.s3c24xx_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.s3c24xx_spi* @to_hw(%struct.spi_device* %6)
  store %struct.s3c24xx_spi* %7, %struct.s3c24xx_spi** %5, align 8
  %8 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %12 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %26 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %25, i32 0, i32 2
  %27 = call i32 @init_completion(i32* %26)
  %28 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %31 = call i64 @s3c24xx_spi_usefiq(%struct.s3c24xx_spi* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %40 = call i32 @s3c24xx_spi_tryfiq(%struct.s3c24xx_spi* %39)
  br label %41

41:                                               ; preds = %38, %33, %2
  %42 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %43 = call i32 @hw_txbyte(%struct.s3c24xx_spi* %42, i32 0)
  %44 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %45 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @S3C2410_SPTDAT, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writeb(i32 %43, i64 %48)
  %50 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %50, i32 0, i32 2
  %52 = call i32 @wait_for_completion(i32* %51)
  %53 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %54 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  ret i32 %55
}

declare dso_local %struct.s3c24xx_spi* @to_hw(%struct.spi_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @s3c24xx_spi_usefiq(%struct.s3c24xx_spi*) #1

declare dso_local i32 @s3c24xx_spi_tryfiq(%struct.s3c24xx_spi*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @hw_txbyte(%struct.s3c24xx_spi*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
