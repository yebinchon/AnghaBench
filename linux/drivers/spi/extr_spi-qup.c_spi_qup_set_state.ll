; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_qup = type { i64, i32 }

@SPI_DELAY_THRESHOLD = common dso_local global i32 0, align 4
@SPI_DELAY_RETRY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid state for %ld,us %d\0A\00", align 1
@QUP_STATE = common dso_local global i64 0, align 8
@QUP_STATE_MASK = common dso_local global i32 0, align 4
@QUP_STATE_PAUSE = common dso_local global i32 0, align 4
@QUP_STATE_RESET = common dso_local global i32 0, align 4
@QUP_STATE_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_qup*, i32)* @spi_qup_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_qup_set_state(%struct.spi_qup* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_qup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.spi_qup* %0, %struct.spi_qup** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %25, %2
  %9 = load %struct.spi_qup*, %struct.spi_qup** %4, align 8
  %10 = call i32 @spi_qup_is_valid_state(%struct.spi_qup* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load i32, i32* @SPI_DELAY_THRESHOLD, align 4
  %15 = load i32, i32* @SPI_DELAY_THRESHOLD, align 4
  %16 = mul nsw i32 %15, 2
  %17 = call i32 @usleep_range(i32 %14, i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* @SPI_DELAY_RETRY, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %102

25:                                               ; preds = %13
  br label %8

26:                                               ; preds = %8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.spi_qup*, %struct.spi_qup** %4, align 8
  %31 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.spi_qup*, %struct.spi_qup** %4, align 8
  %38 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QUP_STATE, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl_relaxed(i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @QUP_STATE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @QUP_STATE_PAUSE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @QUP_STATE_RESET, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32, i32* @QUP_STATE_CLEAR, align 4
  %54 = load %struct.spi_qup*, %struct.spi_qup** %4, align 8
  %55 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @QUP_STATE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel_relaxed(i32 %53, i64 %58)
  %60 = load i32, i32* @QUP_STATE_CLEAR, align 4
  %61 = load %struct.spi_qup*, %struct.spi_qup** %4, align 8
  %62 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @QUP_STATE, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel_relaxed(i32 %60, i64 %65)
  br label %82

67:                                               ; preds = %48, %36
  %68 = load i32, i32* @QUP_STATE_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.spi_qup*, %struct.spi_qup** %4, align 8
  %77 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @QUP_STATE, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel_relaxed(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %67, %52
  store i64 0, i64* %6, align 8
  br label %83

83:                                               ; preds = %100, %82
  %84 = load %struct.spi_qup*, %struct.spi_qup** %4, align 8
  %85 = call i32 @spi_qup_is_valid_state(%struct.spi_qup* %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i32, i32* @SPI_DELAY_THRESHOLD, align 4
  %90 = load i32, i32* @SPI_DELAY_THRESHOLD, align 4
  %91 = mul nsw i32 %90, 2
  %92 = call i32 @usleep_range(i32 %89, i32 %91)
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* @SPI_DELAY_RETRY, align 8
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %102

100:                                              ; preds = %88
  br label %83

101:                                              ; preds = %83
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %97, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @spi_qup_is_valid_state(%struct.spi_qup*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
