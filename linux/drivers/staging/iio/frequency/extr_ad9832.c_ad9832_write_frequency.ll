; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9832.c_ad9832_write_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9832.c_ad9832_write_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad9832_state = type { i32, i32, i8**, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AD9832_CMD_FRE8BITSW = common dso_local global i32 0, align 4
@CMD_SHIFT = common dso_local global i32 0, align 4
@ADD_SHIFT = common dso_local global i32 0, align 4
@AD9832_CMD_FRE16BITSW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad9832_state*, i32, i64)* @ad9832_write_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9832_write_frequency(%struct.ad9832_state* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad9832_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ad9832_state* %0, %struct.ad9832_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %11 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_get_rate(i32 %12)
  %14 = sdiv i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %9, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %108

20:                                               ; preds = %3
  %21 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %22 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_get_rate(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @ad9832_calc_freqreg(i32 %24, i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i32, i32* @AD9832_CMD_FRE8BITSW, align 4
  %28 = load i32, i32* @CMD_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ADD_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = lshr i64 %35, 24
  %37 = and i64 %36, 255
  %38 = or i64 %34, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @cpu_to_be16(i32 %39)
  %41 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %42 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %40, i8** %44, align 8
  %45 = load i32, i32* @AD9832_CMD_FRE16BITSW, align 4
  %46 = load i32, i32* @CMD_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = sub i32 %48, 1
  %50 = load i32, i32* @ADD_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %47, %51
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %8, align 8
  %55 = lshr i64 %54, 16
  %56 = and i64 %55, 255
  %57 = or i64 %53, %56
  %58 = trunc i64 %57 to i32
  %59 = call i8* @cpu_to_be16(i32 %58)
  %60 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %61 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* %59, i8** %63, align 8
  %64 = load i32, i32* @AD9832_CMD_FRE8BITSW, align 4
  %65 = load i32, i32* @CMD_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = sub i32 %67, 2
  %69 = load i32, i32* @ADD_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %66, %70
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %8, align 8
  %74 = lshr i64 %73, 8
  %75 = and i64 %74, 255
  %76 = or i64 %72, %75
  %77 = trunc i64 %76 to i32
  %78 = call i8* @cpu_to_be16(i32 %77)
  %79 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %80 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %79, i32 0, i32 2
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  store i8* %78, i8** %82, align 8
  %83 = load i32, i32* @AD9832_CMD_FRE16BITSW, align 4
  %84 = load i32, i32* @CMD_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = sub i32 %86, 3
  %88 = load i32, i32* @ADD_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %85, %89
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %8, align 8
  %93 = lshr i64 %92, 0
  %94 = and i64 %93, 255
  %95 = or i64 %91, %94
  %96 = trunc i64 %95 to i32
  %97 = call i8* @cpu_to_be16(i32 %96)
  %98 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %99 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %98, i32 0, i32 2
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 3
  store i8* %97, i8** %101, align 8
  %102 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %103 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ad9832_state*, %struct.ad9832_state** %5, align 8
  %106 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %105, i32 0, i32 0
  %107 = call i32 @spi_sync(i32 %104, i32* %106)
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %20, %17
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i64 @ad9832_calc_freqreg(i32, i64) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
