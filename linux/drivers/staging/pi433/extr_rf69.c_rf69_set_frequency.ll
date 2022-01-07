; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@F_OSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"setFrequency: illegal input param\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_FRF_MSB = common dso_local global i32 0, align 4
@REG_FRF_MID = common dso_local global i32 0, align 4
@REG_FRF_LSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_set_frequency(%struct.spi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1000000, i32* %13, align 4
  %14 = load i32, i32* @F_OSC, align 4
  %15 = load i32, i32* %13, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @do_div(i32 %17, i32 524288)
  %19 = load i32, i32* %9, align 4
  %20 = mul nsw i32 %19, 8388608
  %21 = load i32, i32* %13, align 4
  %22 = call i64 @div_u64(i32 %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %76

32:                                               ; preds = %2
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @do_div(i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 16711680
  %43 = ashr i32 %42, 16
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 65280
  %46 = ashr i32 %45, 8
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 255
  store i32 %48, i32* %12, align 4
  %49 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %50 = load i32, i32* @REG_FRF_MSB, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @rf69_write_reg(%struct.spi_device* %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %32
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %76

57:                                               ; preds = %32
  %58 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %59 = load i32, i32* @REG_FRF_MID, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @rf69_write_reg(%struct.spi_device* %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %76

66:                                               ; preds = %57
  %67 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %68 = load i32, i32* @REG_FRF_LSB, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @rf69_write_reg(%struct.spi_device* %67, i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %73, %64, %55, %26
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @div_u64(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @rf69_write_reg(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
