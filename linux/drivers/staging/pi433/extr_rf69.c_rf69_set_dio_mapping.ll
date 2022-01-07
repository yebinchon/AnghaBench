; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_dio_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_dio_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@MASK_DIO0 = common dso_local global i32 0, align 4
@SHIFT_DIO0 = common dso_local global i32 0, align 4
@REG_DIOMAPPING1 = common dso_local global i32 0, align 4
@MASK_DIO1 = common dso_local global i32 0, align 4
@SHIFT_DIO1 = common dso_local global i32 0, align 4
@MASK_DIO2 = common dso_local global i32 0, align 4
@SHIFT_DIO2 = common dso_local global i32 0, align 4
@MASK_DIO3 = common dso_local global i32 0, align 4
@SHIFT_DIO3 = common dso_local global i32 0, align 4
@MASK_DIO4 = common dso_local global i32 0, align 4
@SHIFT_DIO4 = common dso_local global i32 0, align 4
@REG_DIOMAPPING2 = common dso_local global i32 0, align 4
@MASK_DIO5 = common dso_local global i32 0, align 4
@SHIFT_DIO5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set: illegal input param\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_set_dio_mapping(%struct.spi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %37 [
    i32 0, label %13
    i32 1, label %17
    i32 2, label %21
    i32 3, label %25
    i32 4, label %29
    i32 5, label %33
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @MASK_DIO0, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @SHIFT_DIO0, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @REG_DIOMAPPING1, align 4
  store i32 %16, i32* %10, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load i32, i32* @MASK_DIO1, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @SHIFT_DIO1, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @REG_DIOMAPPING1, align 4
  store i32 %20, i32* %10, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load i32, i32* @MASK_DIO2, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @SHIFT_DIO2, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @REG_DIOMAPPING1, align 4
  store i32 %24, i32* %10, align 4
  br label %43

25:                                               ; preds = %3
  %26 = load i32, i32* @MASK_DIO3, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @SHIFT_DIO3, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @REG_DIOMAPPING1, align 4
  store i32 %28, i32* %10, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load i32, i32* @MASK_DIO4, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @SHIFT_DIO4, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @REG_DIOMAPPING2, align 4
  store i32 %32, i32* %10, align 4
  br label %43

33:                                               ; preds = %3
  %34 = load i32, i32* @MASK_DIO5, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @SHIFT_DIO5, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @REG_DIOMAPPING2, align 4
  store i32 %36, i32* %10, align 4
  br label %43

37:                                               ; preds = %3
  %38 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %60

43:                                               ; preds = %33, %29, %25, %21, %17, %13
  %44 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @rf69_read_reg(%struct.spi_device* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  store i32 %55, i32* %11, align 4
  %56 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @rf69_write_reg(%struct.spi_device* %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %43, %37
  %61 = load i32, i32* %4, align 4
  ret i32 %61
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
