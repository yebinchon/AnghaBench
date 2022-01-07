; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_fifo_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_fifo_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"set: illegal input param\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_FIFO_THRESH = common dso_local global i32 0, align 4
@MASK_FIFO_THRESH_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_set_fifo_threshold(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %18 = load i32, i32* @REG_FIFO_THRESH, align 4
  %19 = load i32, i32* @MASK_FIFO_THRESH_VALUE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @rf69_read_mod_write(%struct.spi_device* %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %28 = call i32 @rf69_read_fifo(%struct.spi_device* %27, i32* %6, i32 1)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %24, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @rf69_read_mod_write(%struct.spi_device*, i32, i32, i32) #1

declare dso_local i32 @rf69_read_fifo(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
