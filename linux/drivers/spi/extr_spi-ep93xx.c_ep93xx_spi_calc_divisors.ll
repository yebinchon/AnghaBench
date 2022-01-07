; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_calc_divisors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_calc_divisors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32, i32 }
%struct.ep93xx_spi = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, i64, i64*, i64*)* @ep93xx_spi_calc_divisors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_calc_divisors(%struct.spi_master* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ep93xx_spi*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %15 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %14)
  store %struct.ep93xx_spi* %15, %struct.ep93xx_spi** %10, align 8
  %16 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %10, align 8
  %17 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @clk_get_rate(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %22 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %25 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @clamp(i64 %20, i32 %23, i32 %26)
  store i64 %27, i64* %7, align 8
  store i32 2, i32* %12, align 4
  br label %28

28:                                               ; preds = %57, %4
  %29 = load i32, i32* %12, align 4
  %30 = icmp sle i32 %29, 254
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %13, align 4
  %34 = icmp sle i32 %33, 255
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %36, %41
  %43 = load i64, i64* %7, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %8, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %5, align 4
  br label %63

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %32

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %12, align 4
  br label %28

60:                                               ; preds = %28
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %45
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @clamp(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
