; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_lr_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_lr_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32 }

@BSPI = common dso_local global i32 0, align 4
@BSPI_RAF_READ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_qspi*)* @bcm_qspi_bspi_lr_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_bspi_lr_read_fifo(%struct.bcm_qspi* %0) #0 {
  %2 = alloca %struct.bcm_qspi*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %2, align 8
  %4 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %5 = load i32, i32* @BSPI, align 4
  %6 = load i32, i32* @BSPI_RAF_READ_DATA, align 4
  %7 = call i32 @bcm_qspi_read(%struct.bcm_qspi* %4, i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %9 = call i64 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @bcm_qspi_read(%struct.bcm_qspi*, i32, i32) #1

declare dso_local i64 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
