; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7280_state*, i32, i32, i32, i32)* @ad7280_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_write(%struct.ad7280_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ad7280_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ad7280_state* %0, %struct.ad7280_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, 27
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 21
  %16 = or i32 %13, %15
  %17 = load i32, i32* %10, align 4
  %18 = and i32 %17, 255
  %19 = shl i32 %18, 13
  %20 = or i32 %16, %19
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %21, 12
  %23 = or i32 %20, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ad7280_state*, %struct.ad7280_state** %6, align 8
  %25 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = lshr i32 %27, 11
  %29 = call i32 @ad7280_calc_crc8(i32 %26, i32 %28)
  %30 = shl i32 %29, 3
  %31 = or i32 %30, 2
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @cpu_to_be32(i32 %34)
  %36 = load %struct.ad7280_state*, %struct.ad7280_state** %6, align 8
  %37 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.ad7280_state*, %struct.ad7280_state** %6, align 8
  %41 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ad7280_state*, %struct.ad7280_state** %6, align 8
  %44 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @spi_write(i32 %42, i32* %46, i32 4)
  ret i32 %47
}

declare dso_local i32 @ad7280_calc_crc8(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
