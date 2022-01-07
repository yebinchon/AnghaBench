; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_modulation_shaping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_modulation_shaping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@REG_DATAMODUL = common dso_local global i32 0, align 4
@MASK_DATAMODUL_MODULATION_SHAPE = common dso_local global i32 0, align 4
@DATAMODUL_MODULATION_SHAPE_NONE = common dso_local global i32 0, align 4
@DATAMODUL_MODULATION_SHAPE_1_0 = common dso_local global i32 0, align 4
@DATAMODUL_MODULATION_SHAPE_0_5 = common dso_local global i32 0, align 4
@DATAMODUL_MODULATION_SHAPE_0_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set: illegal input param\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DATAMODUL_MODULATION_SHAPE_BR = common dso_local global i32 0, align 4
@DATAMODUL_MODULATION_SHAPE_2BR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"set: modulation undefined\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_set_modulation_shaping(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %7 = call i32 @rf69_get_modulation(%struct.spi_device* %6)
  switch i32 %7, label %66 [
    i32 135, label %8
    i32 134, label %40
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %34 [
    i32 128, label %10
    i32 131, label %16
    i32 132, label %22
    i32 133, label %28
  ]

10:                                               ; preds = %8
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = load i32, i32* @REG_DATAMODUL, align 4
  %13 = load i32, i32* @MASK_DATAMODUL_MODULATION_SHAPE, align 4
  %14 = load i32, i32* @DATAMODUL_MODULATION_SHAPE_NONE, align 4
  %15 = call i32 @rf69_read_mod_write(%struct.spi_device* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %72

16:                                               ; preds = %8
  %17 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %18 = load i32, i32* @REG_DATAMODUL, align 4
  %19 = load i32, i32* @MASK_DATAMODUL_MODULATION_SHAPE, align 4
  %20 = load i32, i32* @DATAMODUL_MODULATION_SHAPE_1_0, align 4
  %21 = call i32 @rf69_read_mod_write(%struct.spi_device* %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %72

22:                                               ; preds = %8
  %23 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %24 = load i32, i32* @REG_DATAMODUL, align 4
  %25 = load i32, i32* @MASK_DATAMODUL_MODULATION_SHAPE, align 4
  %26 = load i32, i32* @DATAMODUL_MODULATION_SHAPE_0_5, align 4
  %27 = call i32 @rf69_read_mod_write(%struct.spi_device* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %72

28:                                               ; preds = %8
  %29 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %30 = load i32, i32* @REG_DATAMODUL, align 4
  %31 = load i32, i32* @MASK_DATAMODUL_MODULATION_SHAPE, align 4
  %32 = load i32, i32* @DATAMODUL_MODULATION_SHAPE_0_3, align 4
  %33 = call i32 @rf69_read_mod_write(%struct.spi_device* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %72

34:                                               ; preds = %8
  %35 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %72

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %60 [
    i32 128, label %42
    i32 129, label %48
    i32 130, label %54
  ]

42:                                               ; preds = %40
  %43 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %44 = load i32, i32* @REG_DATAMODUL, align 4
  %45 = load i32, i32* @MASK_DATAMODUL_MODULATION_SHAPE, align 4
  %46 = load i32, i32* @DATAMODUL_MODULATION_SHAPE_NONE, align 4
  %47 = call i32 @rf69_read_mod_write(%struct.spi_device* %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %40
  %49 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %50 = load i32, i32* @REG_DATAMODUL, align 4
  %51 = load i32, i32* @MASK_DATAMODUL_MODULATION_SHAPE, align 4
  %52 = load i32, i32* @DATAMODUL_MODULATION_SHAPE_BR, align 4
  %53 = call i32 @rf69_read_mod_write(%struct.spi_device* %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %72

54:                                               ; preds = %40
  %55 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %56 = load i32, i32* @REG_DATAMODUL, align 4
  %57 = load i32, i32* @MASK_DATAMODUL_MODULATION_SHAPE, align 4
  %58 = load i32, i32* @DATAMODUL_MODULATION_SHAPE_2BR, align 4
  %59 = call i32 @rf69_read_mod_write(%struct.spi_device* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %72

60:                                               ; preds = %40
  %61 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 0
  %63 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %2
  %67 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 0
  %69 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %60, %54, %48, %42, %34, %28, %22, %16, %10
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @rf69_get_modulation(%struct.spi_device*) #1

declare dso_local i32 @rf69_read_mod_write(%struct.spi_device*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
