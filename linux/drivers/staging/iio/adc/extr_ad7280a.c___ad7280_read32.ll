; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c___ad7280_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c___ad7280_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { i32*, i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@AD7280A_READ_TXVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7280_state*, i32*)* @__ad7280_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ad7280_read32(%struct.ad7280_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7280_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_transfer, align 8
  store %struct.ad7280_state* %0, %struct.ad7280_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 1
  %10 = load %struct.ad7280_state*, %struct.ad7280_state** %4, align 8
  %11 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32* %13, i32** %9, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 2
  %15 = load %struct.ad7280_state*, %struct.ad7280_state** %4, align 8
  %16 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32* %18, i32** %14, align 8
  %19 = load i32, i32* @AD7280A_READ_TXVAL, align 4
  %20 = call i32 @cpu_to_be32(i32 %19)
  %21 = load %struct.ad7280_state*, %struct.ad7280_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.ad7280_state*, %struct.ad7280_state** %4, align 8
  %26 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @spi_sync_transfer(i32 %27, %struct.spi_transfer* %7, i32 1)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.ad7280_state*, %struct.ad7280_state** %4, align 8
  %35 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
