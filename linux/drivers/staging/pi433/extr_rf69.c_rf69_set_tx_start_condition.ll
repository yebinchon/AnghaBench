; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_tx_start_condition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_tx_start_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@REG_FIFO_THRESH = common dso_local global i32 0, align 4
@MASK_FIFO_THRESH_TXSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set: illegal input param\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_set_tx_start_condition(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 129, label %7
    i32 128, label %12
  ]

7:                                                ; preds = %2
  %8 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %9 = load i32, i32* @REG_FIFO_THRESH, align 4
  %10 = load i32, i32* @MASK_FIFO_THRESH_TXSTART, align 4
  %11 = call i32 @rf69_clear_bit(%struct.spi_device* %8, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %14 = load i32, i32* @REG_FIFO_THRESH, align 4
  %15 = load i32, i32* @MASK_FIFO_THRESH_TXSTART, align 4
  %16 = call i32 @rf69_set_bit(%struct.spi_device* %13, i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %12, %7
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @rf69_clear_bit(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @rf69_set_bit(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
