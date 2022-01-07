; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_write_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_write_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad9834_state = type { i32, i32, i32 }

@AD9834_PHASE_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad9834_state*, i64, i64)* @ad9834_write_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9834_write_phase(%struct.ad9834_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad9834_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ad9834_state* %0, %struct.ad9834_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @AD9834_PHASE_BITS, align 4
  %10 = call i64 @BIT(i32 %9)
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = or i64 %16, %17
  %19 = call i32 @cpu_to_be16(i64 %18)
  %20 = load %struct.ad9834_state*, %struct.ad9834_state** %5, align 8
  %21 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ad9834_state*, %struct.ad9834_state** %5, align 8
  %23 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ad9834_state*, %struct.ad9834_state** %5, align 8
  %26 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %25, i32 0, i32 0
  %27 = call i32 @spi_sync(i32 %24, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %15, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
