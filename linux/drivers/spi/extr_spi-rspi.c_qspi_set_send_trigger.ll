; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_set_send_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_set_send_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32 }

@QSPI_BUFFER_SIZE = common dso_local global i32 0, align 4
@SPBFCR_TXTRG_MASK = common dso_local global i32 0, align 4
@SPBFCR_TXTRG_32B = common dso_local global i32 0, align 4
@QSPI_SPBFCR = common dso_local global i32 0, align 4
@SPBFCR_TXTRG_1B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, i32)* @qspi_set_send_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_set_send_trigger(%struct.rspi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.rspi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @QSPI_BUFFER_SIZE, align 4
  %8 = call i32 @min(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @QSPI_BUFFER_SIZE, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %14 = load i32, i32* @SPBFCR_TXTRG_MASK, align 4
  %15 = load i32, i32* @SPBFCR_TXTRG_32B, align 4
  %16 = load i32, i32* @QSPI_SPBFCR, align 4
  %17 = call i32 @qspi_update(%struct.rspi_data* %13, i32 %14, i32 %15, i32 %16)
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %20 = load i32, i32* @SPBFCR_TXTRG_MASK, align 4
  %21 = load i32, i32* @SPBFCR_TXTRG_1B, align 4
  %22 = load i32, i32* @QSPI_SPBFCR, align 4
  %23 = call i32 @qspi_update(%struct.rspi_data* %19, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @qspi_update(%struct.rspi_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
