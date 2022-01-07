; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_bandwidth_intern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_bandwidth_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"set: illegal input param\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MASK_BW_DCC_FREQ = common dso_local global i32 0, align 4
@BW_MANT_16 = common dso_local global i32 0, align 4
@BW_MANT_20 = common dso_local global i32 0, align 4
@BW_MANT_24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32, i32, i32)* @rf69_set_bandwidth_intern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rf69_set_bandwidth_intern(%struct.spi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp sgt i32 %11, 7
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %62

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 130
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 129
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 128
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %62

34:                                               ; preds = %25, %22, %19
  %35 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @rf69_read_reg(%struct.spi_device* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @MASK_BW_DCC_FREQ, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %54 [
    i32 130, label %42
    i32 129, label %46
    i32 128, label %50
  ]

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @BW_MANT_16, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %10, align 4
  br label %54

46:                                               ; preds = %34
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @BW_MANT_20, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %10, align 4
  br label %54

50:                                               ; preds = %34
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @BW_MANT_24, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %34, %50, %46, %42
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @rf69_write_reg(%struct.spi_device* %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %54, %28, %13
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @rf69_read_reg(%struct.spi_device*, i32) #1

declare dso_local i32 @rf69_write_reg(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
