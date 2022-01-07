; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9832.c_ad9832_write_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9832.c_ad9832_write_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad9832_state = type { i32, i32, i8** }

@AD9832_PHASE_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD9832_CMD_PHA8BITSW = common dso_local global i64 0, align 8
@CMD_SHIFT = common dso_local global i64 0, align 8
@ADD_SHIFT = common dso_local global i64 0, align 8
@AD9832_CMD_PHA16BITSW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad9832_state*, i64, i64)* @ad9832_write_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9832_write_phase(%struct.ad9832_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad9832_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ad9832_state* %0, %struct.ad9832_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @AD9832_PHASE_BITS, align 4
  %10 = call i64 @BIT(i32 %9)
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %54

15:                                               ; preds = %3
  %16 = load i64, i64* @AD9832_CMD_PHA8BITSW, align 8
  %17 = load i64, i64* @CMD_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @ADD_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = or i64 %18, %21
  %23 = load i64, i64* %7, align 8
  %24 = lshr i64 %23, 8
  %25 = and i64 %24, 255
  %26 = or i64 %22, %25
  %27 = call i8* @cpu_to_be16(i64 %26)
  %28 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %29 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %27, i8** %31, align 8
  %32 = load i64, i64* @AD9832_CMD_PHA16BITSW, align 8
  %33 = load i64, i64* @CMD_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 1
  %37 = load i64, i64* @ADD_SHIFT, align 8
  %38 = shl i64 %36, %37
  %39 = or i64 %34, %38
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %40, 255
  %42 = or i64 %39, %41
  %43 = call i8* @cpu_to_be16(i64 %42)
  %44 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %45 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %44, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %43, i8** %47, align 8
  %48 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %49 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %52 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %51, i32 0, i32 0
  %53 = call i32 @spi_sync(i32 %50, i32* %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %15, %12
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
