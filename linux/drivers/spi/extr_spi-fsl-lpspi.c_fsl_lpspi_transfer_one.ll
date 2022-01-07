; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.fsl_lpspi_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @fsl_lpspi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_transfer_one(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.fsl_lpspi_data*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %11 = call %struct.fsl_lpspi_data* @spi_controller_get_devdata(%struct.spi_controller* %10)
  store %struct.fsl_lpspi_data* %11, %struct.fsl_lpspi_data** %8, align 8
  %12 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %13 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %17 = call i32 @fsl_lpspi_setup_transfer(%struct.spi_controller* %14, %struct.spi_device* %15, %struct.spi_transfer* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %24 = call i32 @fsl_lpspi_set_cmd(%struct.fsl_lpspi_data* %23)
  %25 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %26 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %28 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %33 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %35 = call i32 @fsl_lpspi_dma_transfer(%struct.spi_controller* %32, %struct.fsl_lpspi_data* %33, %struct.spi_transfer* %34)
  store i32 %35, i32* %9, align 4
  br label %40

36:                                               ; preds = %22
  %37 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %39 = call i32 @fsl_lpspi_pio_transfer(%struct.spi_controller* %37, %struct.spi_transfer* %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %43, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.fsl_lpspi_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @fsl_lpspi_setup_transfer(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @fsl_lpspi_set_cmd(%struct.fsl_lpspi_data*) #1

declare dso_local i32 @fsl_lpspi_dma_transfer(%struct.spi_controller*, %struct.fsl_lpspi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @fsl_lpspi_pio_transfer(%struct.spi_controller*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
