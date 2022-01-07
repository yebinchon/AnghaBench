; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-coldfire-qspi.c_mcfqspi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-coldfire-qspi.c_mcfqspi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32, i32 }
%struct.mcfqspi = type { i32 }

@MCFQSPI_QMR_MSTR = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@MCFQSPI_QMR_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@MCFQSPI_QMR_CPOL = common dso_local global i32 0, align 4
@MCFQSPI_QIR_SPIFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @mcfqspi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcfqspi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.mcfqspi*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.mcfqspi* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.mcfqspi* %10, %struct.mcfqspi** %7, align 8
  %11 = load i32, i32* @MCFQSPI_QMR_MSTR, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 10
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SPI_CPHA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @MCFQSPI_QMR_CPHA, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SPI_CPOL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @MCFQSPI_QMR_CPOL, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mcfqspi_qmr_baud(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %struct.mcfqspi*, %struct.mcfqspi** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mcfqspi_wr_qmr(%struct.mcfqspi* %46, i32 %47)
  %49 = load %struct.mcfqspi*, %struct.mcfqspi** %7, align 8
  %50 = load i32, i32* @MCFQSPI_QIR_SPIFE, align 4
  %51 = call i32 @mcfqspi_wr_qir(%struct.mcfqspi* %49, i32 %50)
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %68

56:                                               ; preds = %39
  %57 = load %struct.mcfqspi*, %struct.mcfqspi** %7, align 8
  %58 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %65 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mcfqspi_transfer_msg8(%struct.mcfqspi* %57, i32 %60, i32 %63, i32 %66)
  br label %81

68:                                               ; preds = %39
  %69 = load %struct.mcfqspi*, %struct.mcfqspi** %7, align 8
  %70 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 2
  %74 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %75 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %78 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mcfqspi_transfer_msg16(%struct.mcfqspi* %69, i32 %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %68, %56
  %82 = load %struct.mcfqspi*, %struct.mcfqspi** %7, align 8
  %83 = call i32 @mcfqspi_wr_qir(%struct.mcfqspi* %82, i32 0)
  ret i32 0
}

declare dso_local %struct.mcfqspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @mcfqspi_qmr_baud(i32) #1

declare dso_local i32 @mcfqspi_wr_qmr(%struct.mcfqspi*, i32) #1

declare dso_local i32 @mcfqspi_wr_qir(%struct.mcfqspi*, i32) #1

declare dso_local i32 @mcfqspi_transfer_msg8(%struct.mcfqspi*, i32, i32, i32) #1

declare dso_local i32 @mcfqspi_transfer_msg16(%struct.mcfqspi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
