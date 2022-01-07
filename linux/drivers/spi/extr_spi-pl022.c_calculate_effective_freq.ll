; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_calculate_effective_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_calculate_effective_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ssp_clock_params = type { i32, i32 }

@CPSDVR_MIN = common dso_local global i64 0, align 8
@SCR_MIN = common dso_local global i64 0, align 8
@CPSDVR_MAX = common dso_local global i64 0, align 8
@SCR_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Max speed that can be programmed is %d Hz, you requested %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Requested frequency: %d Hz is less than minimum possible %d Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"pl022: Matching cpsdvsr and scr not found for %d Hz rate \0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"SSP Target Frequency is: %u, Effective Frequency is %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SSP cpsdvsr = %d, scr = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl022*, i32, %struct.ssp_clock_params*)* @calculate_effective_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_effective_freq(%struct.pl022* %0, i32 %1, %struct.ssp_clock_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pl022*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssp_clock_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pl022* %0, %struct.pl022** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ssp_clock_params* %2, %struct.ssp_clock_params** %7, align 8
  %18 = load i64, i64* @CPSDVR_MIN, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* @SCR_MIN, align 8
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.pl022*, %struct.pl022** %5, align 8
  %21 = getelementptr inbounds %struct.pl022, %struct.pl022* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_get_rate(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* @CPSDVR_MIN, align 8
  %26 = load i64, i64* @SCR_MIN, align 8
  %27 = call i32 @spi_rate(i32 %24, i64 %25, i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* @CPSDVR_MAX, align 8
  %30 = load i64, i64* @SCR_MAX, align 8
  %31 = call i32 @spi_rate(i32 %28, i64 %29, i64 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = load %struct.pl022*, %struct.pl022** %5, align 8
  %37 = getelementptr inbounds %struct.pl022, %struct.pl022* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %3
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.pl022*, %struct.pl022** %5, align 8
  %49 = getelementptr inbounds %struct.pl022, %struct.pl022* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %143

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %100, %57
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @CPSDVR_MAX, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  br i1 %67, label %68, label %104

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %81, %68
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @SCR_MAX, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @spi_rate(i32 %74, i64 %75, i64 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %69

84:                                               ; preds = %73
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i64, i64* %8, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %14, align 4
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 1, i32* %17, align 4
  br label %98

98:                                               ; preds = %97, %88
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %69
  %101 = load i64, i64* %8, align 8
  %102 = add nsw i64 %101, 2
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* @SCR_MIN, align 8
  store i64 %103, i64* %9, align 8
  br label %58

104:                                              ; preds = %66
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @WARN(i32 %108, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = and i32 %111, 255
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.ssp_clock_params*, %struct.ssp_clock_params** %7, align 8
  %117 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %15, align 4
  %119 = and i32 %118, 255
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.ssp_clock_params*, %struct.ssp_clock_params** %7, align 8
  %124 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.pl022*, %struct.pl022** %5, align 8
  %126 = getelementptr inbounds %struct.pl022, %struct.pl022* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @dev_dbg(i32* %128, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load %struct.pl022*, %struct.pl022** %5, align 8
  %133 = getelementptr inbounds %struct.pl022, %struct.pl022* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load %struct.ssp_clock_params*, %struct.ssp_clock_params** %7, align 8
  %137 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ssp_clock_params*, %struct.ssp_clock_params** %7, align 8
  %140 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_dbg(i32* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %138, i32 %141)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %104, %47
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spi_rate(i32, i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
