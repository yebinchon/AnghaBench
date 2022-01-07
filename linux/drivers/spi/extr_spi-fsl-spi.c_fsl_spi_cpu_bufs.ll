; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_cpu_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_cpu_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc8xxx_spi = type { i32, i32 (%struct.mpc8xxx_spi*)*, %struct.fsl_spi_reg* }
%struct.fsl_spi_reg = type { i32, i32 }
%struct.spi_transfer = type { i32 }

@SPIM_NE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc8xxx_spi*, %struct.spi_transfer*, i32)* @fsl_spi_cpu_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_spi_cpu_bufs(%struct.mpc8xxx_spi* %0, %struct.spi_transfer* %1, i32 %2) #0 {
  %4 = alloca %struct.mpc8xxx_spi*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_spi_reg*, align 8
  store %struct.mpc8xxx_spi* %0, %struct.mpc8xxx_spi** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %4, align 8
  %10 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %9, i32 0, i32 2
  %11 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %10, align 8
  store %struct.fsl_spi_reg* %11, %struct.fsl_spi_reg** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %4, align 8
  %14 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %8, align 8
  %16 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %15, i32 0, i32 1
  %17 = load i32, i32* @SPIM_NE, align 4
  %18 = call i32 @mpc8xxx_spi_write_reg(i32* %16, i32 %17)
  %19 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %4, align 8
  %20 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %19, i32 0, i32 1
  %21 = load i32 (%struct.mpc8xxx_spi*)*, i32 (%struct.mpc8xxx_spi*)** %20, align 8
  %22 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %4, align 8
  %23 = call i32 %21(%struct.mpc8xxx_spi* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %8, align 8
  %25 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mpc8xxx_spi_write_reg(i32* %25, i32 %26)
  ret i32 0
}

declare dso_local i32 @mpc8xxx_spi_write_reg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
