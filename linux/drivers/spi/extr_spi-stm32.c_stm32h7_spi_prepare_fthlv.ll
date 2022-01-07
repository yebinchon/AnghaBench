; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_prepare_fthlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_prepare_fthlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spi*)* @stm32h7_spi_prepare_fthlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_spi_prepare_fthlv(%struct.stm32_spi* %0) #0 {
  %2 = alloca %struct.stm32_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %2, align 8
  %5 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 2
  store i32 %8, i32* %4, align 4
  %9 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %10 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %17 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %29 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = srem i32 %33, 2
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %27
  %38 = load i32, i32* %3, align 4
  %39 = srem i32 %38, 4
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
