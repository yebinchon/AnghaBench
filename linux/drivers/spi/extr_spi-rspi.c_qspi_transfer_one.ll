; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i64 }
%struct.rspi_data = type { i32 }

@SPI_LOOP = common dso_local global i32 0, align 4
@SPI_NBITS_SINGLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @qspi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_transfer_one(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.rspi_data*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %10 = call %struct.rspi_data* @spi_controller_get_devdata(%struct.spi_controller* %9)
  store %struct.rspi_data* %10, %struct.rspi_data** %8, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SPI_LOOP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.rspi_data*, %struct.rspi_data** %8, align 8
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %20 = call i32 @qspi_transfer_out_in(%struct.rspi_data* %18, %struct.spi_transfer* %19)
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPI_NBITS_SINGLE, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.rspi_data*, %struct.rspi_data** %8, align 8
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %30 = call i32 @qspi_transfer_out(%struct.rspi_data* %28, %struct.spi_transfer* %29)
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %21
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SPI_NBITS_SINGLE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.rspi_data*, %struct.rspi_data** %8, align 8
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %40 = call i32 @qspi_transfer_in(%struct.rspi_data* %38, %struct.spi_transfer* %39)
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %31
  %42 = load %struct.rspi_data*, %struct.rspi_data** %8, align 8
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %44 = call i32 @qspi_transfer_out_in(%struct.rspi_data* %42, %struct.spi_transfer* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %37, %27, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.rspi_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @qspi_transfer_out_in(%struct.rspi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @qspi_transfer_out(%struct.rspi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @qspi_transfer_in(%struct.rspi_data*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
