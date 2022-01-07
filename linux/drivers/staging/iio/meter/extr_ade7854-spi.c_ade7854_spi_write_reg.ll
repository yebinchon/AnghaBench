; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-spi.c_ade7854_spi_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-spi.c_ade7854_spi_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ade7854_state = type { i32*, i32, i32 }
%struct.spi_transfer = type { i32*, i32, i32 }

@ADE7854_WRITE_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32)* @ade7854_spi_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade7854_spi_write_reg(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ade7854_state*, align 8
  %12 = alloca %struct.spi_transfer, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %16 = call %struct.ade7854_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ade7854_state* %16, %struct.ade7854_state** %11, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %18 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %19 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %17, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32 8, i32* %21, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32 4, i32* %22, align 4
  %23 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %24 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* @ADE7854_WRITE_REG, align 4
  %27 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %28 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %35 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %41 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %118 [
    i32 8, label %45
    i32 16, label %52
    i32 24, label %67
    i32 32, label %89
  ]

45:                                               ; preds = %4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 255
  %48 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %49 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %47, i32* %51, align 4
  br label %121

52:                                               ; preds = %4
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32 5, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %58 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 255
  %63 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %64 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 %62, i32* %66, align 4
  br label %121

67:                                               ; preds = %4
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32 6, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %73 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %80 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 255
  %85 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %86 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32 %84, i32* %88, align 4
  br label %121

89:                                               ; preds = %4
  %90 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32 7, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 24
  %93 = and i32 %92, 255
  %94 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %95 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %7, align 4
  %99 = ashr i32 %98, 16
  %100 = and i32 %99, 255
  %101 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %102 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %109 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 255
  %114 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %115 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 6
  store i32 %113, i32* %117, align 4
  br label %121

118:                                              ; preds = %4
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %126

121:                                              ; preds = %89, %67, %52, %45
  %122 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %123 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @spi_sync_transfer(i32 %124, %struct.spi_transfer* %12, i32 1)
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %121, %118
  %127 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %128 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ade7854_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
