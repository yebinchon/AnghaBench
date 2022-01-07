; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32, i32, i32 }

@BSPI = common dso_local global i32 0, align 4
@BSPI_REVISION_ID = common dso_local global i32 0, align 4
@BSPI_BSPI_XOR_VALUE = common dso_local global i32 0, align 4
@BSPI_BSPI_XOR_ENABLE = common dso_local global i32 0, align 4
@BSPI_B0_CTRL = common dso_local global i32 0, align 4
@BSPI_B1_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_qspi*)* @bcm_qspi_bspi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_qspi_bspi_init(%struct.bcm_qspi* %0) #0 {
  %2 = alloca %struct.bcm_qspi*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %5 = load i32, i32* @BSPI, align 4
  %6 = load i32, i32* @BSPI_REVISION_ID, align 4
  %7 = call i32 @bcm_qspi_read(%struct.bcm_qspi* %4, i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 8
  %10 = and i32 %9, 255
  %11 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %12 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 255
  %15 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %16 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %18 = call i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %22 = load i32, i32* @BSPI, align 4
  %23 = load i32, i32* @BSPI_BSPI_XOR_VALUE, align 4
  %24 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %26 = load i32, i32* @BSPI, align 4
  %27 = load i32, i32* @BSPI_BSPI_XOR_ENABLE, align 4
  %28 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %25, i32 %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %31 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %30, i32 0, i32 2
  store i32 1, i32* %31, align 4
  %32 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %33 = call i32 @bcm_qspi_disable_bspi(%struct.bcm_qspi* %32)
  %34 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %35 = load i32, i32* @BSPI, align 4
  %36 = load i32, i32* @BSPI_B0_CTRL, align 4
  %37 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.bcm_qspi*, %struct.bcm_qspi** %2, align 8
  %39 = load i32, i32* @BSPI, align 4
  %40 = load i32, i32* @BSPI_B1_CTRL, align 4
  %41 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %38, i32 %39, i32 %40, i32 0)
  ret void
}

declare dso_local i32 @bcm_qspi_read(%struct.bcm_qspi*, i32, i32) #1

declare dso_local i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi*) #1

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i32, i32, i32) #1

declare dso_local i32 @bcm_qspi_disable_bspi(%struct.bcm_qspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
