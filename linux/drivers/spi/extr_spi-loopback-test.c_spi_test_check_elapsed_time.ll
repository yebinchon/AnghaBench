; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_check_elapsed_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_check_elapsed_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_test = type { i32, i64, %struct.spi_transfer* }
%struct.spi_transfer = type { i64, i32, i64 }

@BITS_PER_BYTE = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"elapsed time %lld ns is shorter than minimum estimated time %lld ns\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_test*)* @spi_test_check_elapsed_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_test_check_elapsed_time(%struct.spi_device* %0, %struct.spi_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.spi_transfer*, align 8
  %10 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_test* %1, %struct.spi_test** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %49, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %14 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %11
  %18 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %19 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %18, i32 0, i32 2
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i64 %22
  store %struct.spi_transfer* %23, %struct.spi_transfer** %9, align 8
  %24 = load i64, i64* @BITS_PER_BYTE, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %24, %27
  store i64 %28, i64* %10, align 8
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %8, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %17
  br label %49

39:                                               ; preds = %17
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @NSEC_PER_SEC, align 8
  %42 = mul i64 %40, %41
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @div_u64(i64 %42, i32 %45)
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %39, %38
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %11

52:                                               ; preds = %11
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @NSEC_PER_USEC, align 8
  %55 = mul i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %59 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %52
  %64 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 0
  %66 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %67 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @div_u64(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
