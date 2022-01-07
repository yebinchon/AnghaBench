; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_deviation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_deviation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"set_deviation: illegal input param\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@F_OSC = common dso_local global i32 0, align 4
@FDEVMASB_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"set_deviation: err in calc of msb\00", align 1
@REG_FDEV_MSB = common dso_local global i32 0, align 4
@REG_FDEV_LSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_set_deviation(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1000000, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 600
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 500000
  br i1 %16, label %17, label %23

17:                                               ; preds = %14, %2
  %18 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %70

23:                                               ; preds = %14
  %24 = load i32, i32* @F_OSC, align 4
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @do_div(i32 %27, i32 524288)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @do_div(i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 65280
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @FDEVMASB_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %23
  %46 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 0
  %48 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %70

51:                                               ; preds = %23
  %52 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %53 = load i32, i32* @REG_FDEV_MSB, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @rf69_write_reg(%struct.spi_device* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %70

60:                                               ; preds = %51
  %61 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %62 = load i32, i32* @REG_FDEV_LSB, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @rf69_write_reg(%struct.spi_device* %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %67, %58, %45, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @rf69_write_reg(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
