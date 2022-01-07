; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_wait_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_wait_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_spi = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_ENABLE_TMOUT_MSEC = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_REG_MCTRL = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_MCTRL_MES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"timeout occurs in updating Module Enable Status\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synquacer_spi*, i32)* @synquacer_spi_wait_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synquacer_spi_wait_status_update(%struct.synquacer_spi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.synquacer_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.synquacer_spi* %0, %struct.synquacer_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i32, i32* @SYNQUACER_HSSPI_ENABLE_TMOUT_MSEC, align 4
  %10 = call i64 @msecs_to_jiffies(i32 %9)
  %11 = add i64 %8, %10
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %35, %2
  %13 = load %struct.synquacer_spi*, %struct.synquacer_spi** %4, align 8
  %14 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SYNQUACER_HSSPI_REG_MCTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load i32, i32* @SYNQUACER_HSSPI_MCTRL_MES, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %23, %12
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %47

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @time_before(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %12, label %40

40:                                               ; preds = %35
  %41 = load %struct.synquacer_spi*, %struct.synquacer_spi** %4, align 8
  %42 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %33, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
