; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_disable_bspi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_disable_bspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i64 }

@BSPI = common dso_local global i32 0, align 4
@BSPI_MAST_N_BOOT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_qspi*)* @bcm_qspi_disable_bspi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_qspi_disable_bspi(%struct.bcm_qspi* %0) #0 {
  %2 = alloca %struct.bcm_qspi*, align 8
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %2, align 8
  %3 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %4 = call i32 @has_bspi(%struct.bcm_qspi* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  %8 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %9 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %11 = load i32, i32* @BSPI, align 4
  %12 = load i32, i32* @BSPI_MAST_N_BOOT_CTRL, align 4
  %13 = call i32 @bcm_qspi_read(%struct.bcm_qspi* %10, i32 %11, i32 %12)
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %25

17:                                               ; preds = %7
  %18 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %19 = call i32 @bcm_qspi_bspi_busy_poll(%struct.bcm_qspi* %18)
  %20 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %21 = load i32, i32* @BSPI, align 4
  %22 = load i32, i32* @BSPI_MAST_N_BOOT_CTRL, align 4
  %23 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %20, i32 %21, i32 %22, i32 1)
  %24 = call i32 @udelay(i32 1)
  br label %25

25:                                               ; preds = %17, %16, %6
  ret void
}

declare dso_local i32 @has_bspi(%struct.bcm_qspi*) #1

declare dso_local i32 @bcm_qspi_read(%struct.bcm_qspi*, i32, i32) #1

declare dso_local i32 @bcm_qspi_bspi_busy_poll(%struct.bcm_qspi*) #1

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
