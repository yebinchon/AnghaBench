; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_reinit_txrx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_reinit_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc8xxx_spi = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@SPI_QE = common dso_local global i32 0, align 4
@QE_INIT_TX_RX = common dso_local global i32 0, align 4
@QE_CR_PROTOCOL_UNSPECIFIED = common dso_local global i32 0, align 4
@SPI_CPM1 = common dso_local global i32 0, align 4
@CPM_SPI_CMD = common dso_local global i32 0, align 4
@CPM_CR_INIT_TRX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_spi_cpm_reinit_txrx(%struct.mpc8xxx_spi* %0) #0 {
  %2 = alloca %struct.mpc8xxx_spi*, align 8
  store %struct.mpc8xxx_spi* %0, %struct.mpc8xxx_spi** %2, align 8
  %3 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %4 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @SPI_QE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @QE_INIT_TX_RX, align 4
  %11 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %12 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @QE_CR_PROTOCOL_UNSPECIFIED, align 4
  %15 = call i32 @qe_issue_cmd(i32 %10, i32 %13, i32 %14, i32 0)
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %18 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SPI_CPM1, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %16
  %24 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %25 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = call i32 @out_be32(i32* %27, i32 0)
  %29 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %30 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %34 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = call i32 @in_be16(i32* %36)
  %38 = call i32 @out_be16(i32* %32, i32 %37)
  %39 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %40 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = call i32 @out_be32(i32* %42, i32 0)
  %44 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %45 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %2, align 8
  %49 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @in_be16(i32* %51)
  %53 = call i32 @out_be16(i32* %47, i32 %52)
  br label %58

54:                                               ; preds = %16
  %55 = load i32, i32* @CPM_SPI_CMD, align 4
  %56 = load i32, i32* @CPM_CR_INIT_TRX, align 4
  %57 = call i32 @cpm_command(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %23
  br label %59

59:                                               ; preds = %58, %9
  ret void
}

declare dso_local i32 @qe_issue_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @cpm_command(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
