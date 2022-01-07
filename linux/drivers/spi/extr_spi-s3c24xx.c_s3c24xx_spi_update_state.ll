; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, %struct.s3c24xx_spi_devstate* }
%struct.s3c24xx_spi_devstate = type { i32, i32, i32, i32 }
%struct.spi_transfer = type { i32 }
%struct.s3c24xx_spi = type { i32 }

@SPCON_DEFAULT = common dso_local global i32 0, align 4
@S3C2410_SPCON_ENSCK = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@S3C2410_SPCON_CPHA_FMTB = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@S3C2410_SPCON_CPOL_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pre-scaler=%d (wanted %d, got %ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @s3c24xx_spi_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_spi_update_state(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.s3c24xx_spi*, align 8
  %6 = alloca %struct.s3c24xx_spi_devstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = call %struct.s3c24xx_spi* @to_hw(%struct.spi_device* %11)
  store %struct.s3c24xx_spi* %12, %struct.s3c24xx_spi** %5, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 3
  %15 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %14, align 8
  store %struct.s3c24xx_spi_devstate* %15, %struct.s3c24xx_spi_devstate** %6, align 8
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %17 = icmp ne %struct.spi_transfer* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ %25, %22 ]
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %6, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %34
  %43 = load i32, i32* @SPCON_DEFAULT, align 4
  %44 = load i32, i32* @S3C2410_SPCON_ENSCK, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SPI_CPHA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @S3C2410_SPCON_CPHA_FMTB, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SPI_CPOL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @S3C2410_SPCON_CPOL_HIGH, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %69 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %6, align 8
  %72 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %6, align 8
  %75 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %67, %34
  %77 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %6, align 8
  %78 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %84 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @clk_get_rate(i32 %85)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* %7, align 4
  %89 = mul i32 %88, 2
  %90 = call i32 @DIV_ROUND_UP(i64 %87, i32 %89)
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ugt i32 %92, 255
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  store i32 255, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %82
  %96 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 2
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i64, i64* %9, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  %103 = mul i32 2, %102
  %104 = zext i32 %103 to i64
  %105 = udiv i64 %100, %104
  %106 = call i32 @dev_dbg(i32* %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99, i64 %105)
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %6, align 8
  %109 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %6, align 8
  %112 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %95, %76
  ret i32 0
}

declare dso_local %struct.s3c24xx_spi* @to_hw(%struct.spi_device*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
