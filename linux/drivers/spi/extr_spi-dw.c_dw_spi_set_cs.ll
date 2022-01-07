; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.dw_spi = type { i64 }
%struct.chip_data = type { i32 (i32)* }

@DW_SPI_SER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_spi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_spi*, align 8
  %6 = alloca %struct.chip_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.dw_spi* @spi_controller_get_devdata(i32 %9)
  store %struct.dw_spi* %10, %struct.dw_spi** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %11)
  store %struct.chip_data* %12, %struct.chip_data** %6, align 8
  %13 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %14 = icmp ne %struct.chip_data* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %17 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = icmp ne i32 (i32)* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %22 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 %23(i32 %24)
  br label %26

26:                                               ; preds = %20, %15, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %31 = load i32, i32* @DW_SPI_SER, align 4
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = call i32 @dw_writel(%struct.dw_spi* %30, i32 %31, i32 %35)
  br label %47

37:                                               ; preds = %26
  %38 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %39 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %44 = load i32, i32* @DW_SPI_SER, align 4
  %45 = call i32 @dw_writel(%struct.dw_spi* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %29
  ret void
}

declare dso_local %struct.dw_spi* @spi_controller_get_devdata(i32) #1

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local i32 @dw_writel(%struct.dw_spi*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
