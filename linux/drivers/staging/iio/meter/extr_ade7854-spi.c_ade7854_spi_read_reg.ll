; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-spi.c_ade7854_spi_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-spi.c_ade7854_spi_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ade7854_state = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32* }

@ADE7854_READ_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"problem when reading register 0x%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32*, i32)* @ade7854_spi_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade7854_spi_read_reg(%struct.device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.ade7854_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %9, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %16 = call %struct.ade7854_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ade7854_state* %16, %struct.ade7854_state** %10, align 8
  %17 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %20 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %18, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  store i32 8, i32* %22, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 2
  store i32 3, i32* %23, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i64 1
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  store i32 8, i32* %27, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 2
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 3
  %31 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %32 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %30, align 8
  %34 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %35 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %34, i32 0, i32 2
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* @ADE7854_READ_REG, align 4
  %38 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %39 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %46 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %52 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %50, i32* %54, align 4
  %55 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %56 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %59 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %60 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %59)
  %61 = call i32 @spi_sync_transfer(%struct.TYPE_2__* %57, %struct.spi_transfer* %58, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %4
  %65 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %66 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %114

71:                                               ; preds = %4
  %72 = load i32, i32* %8, align 4
  switch i32 %72, label %113 [
    i32 8, label %73
    i32 16, label %80
    i32 24, label %86
    i32 32, label %107
  ]

73:                                               ; preds = %71
  %74 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %75 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %113

80:                                               ; preds = %71
  %81 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %82 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @be16_to_cpup(i32* %83)
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %113

86:                                               ; preds = %71
  %87 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %88 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 16
  %93 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %94 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 8
  %99 = or i32 %92, %98
  %100 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %101 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %99, %104
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  br label %113

107:                                              ; preds = %71
  %108 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %109 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @be32_to_cpup(i32* %110)
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %71, %107, %86, %80, %73
  br label %114

114:                                              ; preds = %113, %64
  %115 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %116 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ade7854_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync_transfer(%struct.TYPE_2__*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
