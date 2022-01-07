; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_rdwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_spi = type { i32 }

@DLN2_SPI_MAX_XFER_SIZE = common dso_local global i64 0, align 8
@DLN2_SPI_ATTR_LEAVE_SS_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dln2_spi*, i32*, i32*, i64, i32)* @dln2_spi_rdwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_spi_rdwr(%struct.dln2_spi* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dln2_spi*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.dln2_spi* %0, %struct.dln2_spi** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %15, align 8
  br label %18

18:                                               ; preds = %84, %5
  %19 = load i64, i64* %15, align 8
  %20 = load i64, i64* @DLN2_SPI_MAX_XFER_SIZE, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @DLN2_SPI_MAX_XFER_SIZE, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i32, i32* @DLN2_SPI_ATTR_LEAVE_SS_LOW, align 4
  store i32 %24, i32* %14, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %15, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %15, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %16, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.dln2_spi*, %struct.dln2_spi** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %16, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i64, i64* %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @dln2_spi_read_write_one(%struct.dln2_spi* %38, i32* %41, i32* %44, i64 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %75

48:                                               ; preds = %34, %28
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.dln2_spi*, %struct.dln2_spi** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @dln2_spi_write_one(%struct.dln2_spi* %52, i32* %55, i64 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %74

59:                                               ; preds = %48
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.dln2_spi*, %struct.dln2_spi** %7, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %16, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i64, i64* %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @dln2_spi_read_one(%struct.dln2_spi* %63, i32* %66, i64 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  br label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %88

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %51
  br label %75

75:                                               ; preds = %74, %37
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %88

80:                                               ; preds = %75
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %15, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, i64* %15, align 8
  br label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %15, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %18, label %87

87:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %78, %70
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @dln2_spi_read_write_one(%struct.dln2_spi*, i32*, i32*, i64, i32) #1

declare dso_local i32 @dln2_spi_write_one(%struct.dln2_spi*, i32*, i64, i32) #1

declare dso_local i32 @dln2_spi_read_one(%struct.dln2_spi*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
