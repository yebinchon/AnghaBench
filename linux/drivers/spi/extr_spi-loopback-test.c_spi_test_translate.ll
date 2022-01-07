; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@SPI_TEST_MAX_SIZE_HALF = common dso_local global i64 0, align 8
@SPI_TEST_MAX_SIZE_PLUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"PointerRange [%pK:%pK[ not in range [%pK:%pK[ or [%pK:%pK[\0A\00", align 1
@SPI_TEST_MAX_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i8**, i64, i8*, i8*)* @spi_test_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_test_translate(%struct.spi_device* %0, i8** %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8**, i8*** %8, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %89

17:                                               ; preds = %5
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load i64, i64* @SPI_TEST_MAX_SIZE_HALF, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, i32* @SPI_TEST_MAX_SIZE_PLUS, align 4
  %26 = sdiv i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @SPI_TEST_MAX_SIZE_HALF, align 8
  %29 = sub i64 %27, %28
  %30 = load i8**, i8*** %8, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 %29
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %24, %17
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i8* @RX(i32 0)
  %38 = load i32, i32* @SPI_TEST_MAX_SIZE_PLUS, align 4
  %39 = call i64 @RANGE_CHECK(i8* %35, i64 %36, i8* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @RX(i32 0)
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  store i64 %47, i64* %12, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr i8, i8* %48, i64 %49
  %51 = load i8**, i8*** %8, align 8
  store i8* %50, i8** %51, align 8
  store i32 0, i32* %6, align 4
  br label %89

52:                                               ; preds = %33
  %53 = load i8**, i8*** %8, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i8* @TX(i32 0)
  %57 = load i32, i32* @SPI_TEST_MAX_SIZE_PLUS, align 4
  %58 = call i64 @RANGE_CHECK(i8* %54, i64 %55, i8* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i8**, i8*** %8, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @TX(i32 0)
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  store i64 %66, i64* %12, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr i8, i8* %67, i64 %68
  %70 = load i8**, i8*** %8, align 8
  store i8* %69, i8** %70, align 8
  store i32 0, i32* %6, align 4
  br label %89

71:                                               ; preds = %52
  %72 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 0
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** %8, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr i8, i8* %77, i64 %78
  %80 = call i8* @RX(i32 0)
  %81 = load i32, i32* @SPI_TEST_MAX_SIZE, align 4
  %82 = call i8* @RX(i32 %81)
  %83 = call i8* @TX(i32 0)
  %84 = load i32, i32* @SPI_TEST_MAX_SIZE, align 4
  %85 = call i8* @TX(i32 %84)
  %86 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %75, i8* %79, i8* %80, i8* %82, i8* %83, i8* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %71, %60, %41, %16
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @RANGE_CHECK(i8*, i64, i8*, i32) #1

declare dso_local i8* @RX(i32) #1

declare dso_local i8* @TX(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
