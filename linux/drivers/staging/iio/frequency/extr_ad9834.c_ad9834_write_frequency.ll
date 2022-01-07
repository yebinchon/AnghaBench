; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_write_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_write_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad9834_state = type { i32, i32, i8**, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AD9834_FREQ_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad9834_state*, i64, i64)* @ad9834_write_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9834_write_frequency(%struct.ad9834_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad9834_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ad9834_state* %0, %struct.ad9834_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ad9834_state*, %struct.ad9834_state** %5, align 8
  %11 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @clk_get_rate(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = udiv i64 %15, 2
  %17 = icmp ugt i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @ad9834_calc_freqreg(i64 %22, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @AD9834_FREQ_BITS, align 4
  %28 = sdiv i32 %27, 2
  %29 = call i64 @RES_MASK(i32 %28)
  %30 = and i64 %26, %29
  %31 = or i64 %25, %30
  %32 = call i8* @cpu_to_be16(i64 %31)
  %33 = load %struct.ad9834_state*, %struct.ad9834_state** %5, align 8
  %34 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %32, i8** %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @AD9834_FREQ_BITS, align 4
  %40 = sdiv i32 %39, 2
  %41 = zext i32 %40 to i64
  %42 = lshr i64 %38, %41
  %43 = load i32, i32* @AD9834_FREQ_BITS, align 4
  %44 = sdiv i32 %43, 2
  %45 = call i64 @RES_MASK(i32 %44)
  %46 = and i64 %42, %45
  %47 = or i64 %37, %46
  %48 = call i8* @cpu_to_be16(i64 %47)
  %49 = load %struct.ad9834_state*, %struct.ad9834_state** %5, align 8
  %50 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* %48, i8** %52, align 8
  %53 = load %struct.ad9834_state*, %struct.ad9834_state** %5, align 8
  %54 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ad9834_state*, %struct.ad9834_state** %5, align 8
  %57 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %56, i32 0, i32 0
  %58 = call i32 @spi_sync(i32 %55, i32* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %21, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @ad9834_calc_freqreg(i64, i64) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i64 @RES_MASK(i32) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
